import 'package:get_it/get_it.dart';
import 'package:yummyani_app/services/service_rest_client.dart';

GetIt di = GetIt.instance;

Future<void> setupDi() async {
  di.registerLazySingleton<ServiceRestClient>(() => ServiceRestClient());
}
