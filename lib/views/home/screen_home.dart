import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:yummyani_app/api/models/anime.dart';
import 'package:yummyani_app/api/models/anime_catalog.dart';
import 'package:yummyani_app/api/rest_client.dart';
import 'package:yummyani_app/app/app_translates.dart';
import 'package:yummyani_app/app/di.dart';
import 'package:yummyani_app/app/libs/extensions.dart';
import 'package:yummyani_app/views/widgets/widget_app_scaffold.dart';
import 'package:yummyani_app/views/widgets/widget_appbar.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({super.key});

  @override
  State<StatefulWidget> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  List<List<Anime>> list = [];

  @override
  void initState() {
    super.initState();
    testApi();
  }

  void testApi() async {
    AnimeCatalog catalog = await di<RestClient>().getCatalog();
    list = toDoubleList(catalog.response.data);
    setStateIfMounted();
  }

  List<List<Anime>> toDoubleList(List<Anime> value) {
    List<List<Anime>> list = [];
    List<Anime> next = [];
    for (int i = 0; i < value.length; i++) {
      next.add(value[i]);
      if (next.length == 2 || i == value.length - 1) {
        list.add(next);
        next = [];
      }
    }
    return list;
  }
  //
  //  Widget
  //

  @override
  Widget build(BuildContext context) {
    return WidgetAppScaffold(
      body: WidgetAppBar.bodyFromScaffold(
        title: AppTranslates.appTitle.toString(),
        child: Padding(
          padding: EdgeInsetsGeometry.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [Expanded(child: buildAnimeList())],
          ),
        ),
      ),
    );
  }

  Widget buildAnimeList() {
    return ListView.builder(
      padding: EdgeInsets.all(0),
      itemBuilder: (context, index) {
        Widget separator = list.length - 1 == index
            ? SizedBox(height: 30)
            : SizedBox(height: 20);
        return Column(
          children: [
            if (index == 0) SizedBox(height: 20),
            Row(
              children: [
                Flexible(fit: FlexFit.tight, child: buildAnime(list[index][0])),
                SizedBox(width: 10),
                Flexible(
                  fit: FlexFit.tight,
                  child: list[index].length > 1
                      ? buildAnime(list[index][1])
                      : SizedBox.shrink(),
                ),
              ],
            ),
            separator,
          ],
        );
      },
      itemCount: list.length,
    );
  }

  Widget buildAnime(Anime item) {
    return Container(
      height: 300,
      width: double.maxFinite,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      child: Stack(
        fit: StackFit.expand,
        children: [
          ClipRRect(
            borderRadius: BorderRadiusGeometry.all(Radius.circular(20)),
            child: Image.network(
              item.poster.getPoster(),
              fit: BoxFit.cover,
              loadingBuilder: (_, child, loadingProgress) {
                if (loadingProgress == null) return child;
                return Lottie.asset('assets/loading.json');
              },
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              constraints: BoxConstraints(minHeight: 50),
              width: double.maxFinite,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.setOpacity(0.6),
                    blurRadius: 10,
                    offset: Offset(0, 4),
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: Padding(
                padding: EdgeInsetsGeometry.symmetric(
                  horizontal: 10,
                ).add(EdgeInsetsGeometry.only(bottom: 10)),
                child: Text(
                  item.title,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
