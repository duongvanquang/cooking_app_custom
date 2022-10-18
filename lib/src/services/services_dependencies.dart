import 'package:get_it/get_it.dart';

import '../commons/rest_utils.dart';
import 'popular/popular_service.dart';

class ServiceDependencies {
  static void init(GetIt injector) {
    // var config = injector.get<AppConfiguration>();
    // injector.registerLazySingleton<RestUtils>(() => RestUtils(config.baseUrl),
    //     instanceName: 'MAIN');
    injector.registerLazySingleton(
        () => PopularService(injector.get<RestUtils>(instanceName: '')));
  }
}
