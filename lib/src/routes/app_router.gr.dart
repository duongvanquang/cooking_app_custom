// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    MainPageRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const MainPage());
    },
    DetailFoodPopularRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const DetailFoodPopular());
    },
    RecommenededFoodDetailRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const RecommenededFoodDetail());
    },
    HomePageTab.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const HomePage());
    },
    DetailPageTab.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const DetailPage());
    },
    SettingPageTab.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const SettingPage());
    },
    HomePageRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const HomePage());
    },
    DetailPageRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const DetailPage());
    },
    SettingPageRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const SettingPage());
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(MainPageRoute.name, path: '/', children: [
          RouteConfig(HomePageTab.name,
              path: 'homePage',
              parent: MainPageRoute.name,
              children: [
                RouteConfig(HomePageRoute.name,
                    path: '', parent: HomePageTab.name)
              ]),
          RouteConfig(DetailPageTab.name,
              path: 'detailPage',
              parent: MainPageRoute.name,
              children: [
                RouteConfig(DetailPageRoute.name,
                    path: 'detail-page', parent: DetailPageTab.name)
              ]),
          RouteConfig(SettingPageTab.name,
              path: 'settingPage',
              parent: MainPageRoute.name,
              children: [
                RouteConfig(SettingPageRoute.name,
                    path: 'setting-page', parent: SettingPageTab.name)
              ])
        ]),
        RouteConfig(DetailFoodPopularRoute.name, path: 'detailFoodPopular'),
        RouteConfig(RecommenededFoodDetailRoute.name, path: 'recommenededFood')
      ];
}

/// generated route for
/// [MainPage]
class MainPageRoute extends PageRouteInfo<void> {
  const MainPageRoute({List<PageRouteInfo>? children})
      : super(MainPageRoute.name, path: '/', initialChildren: children);

  static const String name = 'MainPageRoute';
}

/// generated route for
/// [DetailFoodPopular]
class DetailFoodPopularRoute extends PageRouteInfo<void> {
  const DetailFoodPopularRoute()
      : super(DetailFoodPopularRoute.name, path: 'detailFoodPopular');

  static const String name = 'DetailFoodPopularRoute';
}

/// generated route for
/// [RecommenededFoodDetail]
class RecommenededFoodDetailRoute extends PageRouteInfo<void> {
  const RecommenededFoodDetailRoute()
      : super(RecommenededFoodDetailRoute.name, path: 'recommenededFood');

  static const String name = 'RecommenededFoodDetailRoute';
}

/// generated route for
/// [HomePage]
class HomePageTab extends PageRouteInfo<void> {
  const HomePageTab({List<PageRouteInfo>? children})
      : super(HomePageTab.name, path: 'homePage', initialChildren: children);

  static const String name = 'HomePageTab';
}

/// generated route for
/// [DetailPage]
class DetailPageTab extends PageRouteInfo<void> {
  const DetailPageTab({List<PageRouteInfo>? children})
      : super(DetailPageTab.name,
            path: 'detailPage', initialChildren: children);

  static const String name = 'DetailPageTab';
}

/// generated route for
/// [SettingPage]
class SettingPageTab extends PageRouteInfo<void> {
  const SettingPageTab({List<PageRouteInfo>? children})
      : super(SettingPageTab.name,
            path: 'settingPage', initialChildren: children);

  static const String name = 'SettingPageTab';
}

/// generated route for
/// [HomePage]
class HomePageRoute extends PageRouteInfo<void> {
  const HomePageRoute() : super(HomePageRoute.name, path: '');

  static const String name = 'HomePageRoute';
}

/// generated route for
/// [DetailPage]
class DetailPageRoute extends PageRouteInfo<void> {
  const DetailPageRoute() : super(DetailPageRoute.name, path: 'detail-page');

  static const String name = 'DetailPageRoute';
}

/// generated route for
/// [SettingPage]
class SettingPageRoute extends PageRouteInfo<void> {
  const SettingPageRoute() : super(SettingPageRoute.name, path: 'setting-page');

  static const String name = 'SettingPageRoute';
}
