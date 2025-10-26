import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:yummyani_app/api/models/anime_catalog.dart';
import 'package:yummyani_app/app/di.dart';
import 'package:yummyani_app/services/service_rest_client.dart';

part 'rest_client.g.dart';

@RestApi()
abstract class RestClient {
  factory RestClient({Dio? dio, String? baseUrl}) {
    return _RestClient(
      dio ??
          DioConfig().instanceDio(
            globalConfigurator: (dio) {
              configureDio(dio);
            },
            requestConfigurator: configureRequest,
          ),
      baseUrl: baseUrl,
    );
  }

  static void configureDio(Dio dio) {
    Dio refreshDio = DioConfig().instanceDio(
      requestConfigurator: configureRequest,
    );
    dio = refreshDio;
  }

  static void configureRequest(RequestOptions options) {
    if (options.queryParameters['baseUrl'] != null) {
      options.baseUrl = options.queryParameters['baseUrl'];
      options.queryParameters.remove('baseUrl');
    } else {
      options.baseUrl = di<ServiceRestClient>().getAppConfig().apiUrl;
      if (!options.baseUrl.endsWith('/')) {
        options.baseUrl = '${options.baseUrl}/';
      }
    }

    if (options.headers['X-Application'] == null) {
      options.headers['X-Application'] = di<ServiceRestClient>()
          .getAppConfig()
          .publicApiKey;
    }

    if (!options.extra.containsKey('not_json')) {
      options.headers['Content-Type'] = 'application/json';
    }

    if (!options.extra.containsKey('not_auth')) {
      // String? authJwtToken = di<ServiceToppenAuth>().getJwtToken();
      // if (authJwtToken != null) {
      //   options.headers['Authorization'] = 'Bearer $authJwtToken';
      // }
    }
  }

  @GET('anime/catalog')
  Future<AnimeCatalog> getCatalog();
}

class DioConfig {
  Dio instanceDio({
    Function(Dio)? globalConfigurator,
    Function(RequestOptions options)? requestConfigurator,
  }) {
    final dio = Dio();
    Duration timeoutDuration = Duration(milliseconds: 30000);
    dio.options.connectTimeout = timeoutDuration;
    dio.options.receiveTimeout = timeoutDuration;
    dio.options.sendTimeout = timeoutDuration;

    dio.interceptors.add(RequestConfigureInterceptor(requestConfigurator));
    globalConfigurator?.call(dio);
    return dio;
  }
}

class RequestConfigureInterceptor extends Interceptor {
  Function(RequestOptions options)? configurator;

  RequestConfigureInterceptor(this.configurator);

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    configurator?.call(options);
    handler.next(options);
  }
}
