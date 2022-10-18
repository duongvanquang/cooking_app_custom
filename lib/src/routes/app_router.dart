import 'package:auto_route/auto_route.dart';
import 'package:cooking_app/src/page/detail_page.dart';
import 'package:cooking_app/src/page/home_page.dart';
import 'package:cooking_app/src/widgets/food_popular/recommeneded_food_detail.dart';
import 'package:flutter/material.dart';

import '../page/main_page.dart';
import '../page/setting_page.dart';
import '../widgets/food_popular/detail_food_popular.dart';
import 'route_keys.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
    replaceInRouteName: 'Page,Route,Screen, Widget',
    routes: <AutoRoute>[
      AutoRoute(initial: true, page: MainPage, children: [
        AutoRoute(
            name: RouteKey.homePageTab,
            page: HomePage,
            path: RouteKey.homePage,
            children: [AutoRoute(initial: true, page: HomePage)]),
        AutoRoute(
          name: RouteKey.detailPageTab,
          page: DetailPage,
          path: RouteKey.detailPage,
          children: [AutoRoute(page: DetailPage)],
        ),
        AutoRoute(
          name: RouteKey.settingPageTab,
          path: RouteKey.settingPage,
          page: SettingPage,
          children: [AutoRoute(page: SettingPage)],
        ),
      ]),
      AutoRoute(path: RouteKey.detailFoodPopular, page: DetailFoodPopular),
      AutoRoute(
          path: RouteKey.recommenedeFoodDetail, page: RecommenededFoodDetail),
    ])
class AppRouter extends _$AppRouter {
  AppRouter() : super();
}
