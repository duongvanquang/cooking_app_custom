import 'package:cooking_app/src/routes/app_router.dart';
import 'package:cooking_app/src/services/services_dependencies.dart';
import 'package:get_it/get_it.dart';

import 'bloc/bloc_dependencies.dart';
import 'commons/rest_utils.dart';
import 'model/model_dependencies.dart';
import 'repositories/repository_dependencies.dart';
import 'utilities/app_configuration.dart';

class AppDependencies {
  static GetIt get injector => GetIt.I;
  static Future<bool> appInit() async {
    final config = AppDependencies.injector.get<AppConfiguration>();
    injector.registerFactory<AppRouter>(() => AppRouter());
    BlocDependencies.int(injector);
    RepositoriesDependencies.init(injector);
    ServiceDependencies.init(injector);
    ModelDependencies.init(injector);
    injector.registerFactory<RestUtils>(
        () => RestUtils(config.baseUrlApi, interceptors: []));

    return true;
  }

  static Future<bool> servicesInit() async {
    final config = AppDependencies.injector.get<AppConfiguration>();
    injector.registerFactory<RestUtils>(
        () => RestUtils(config.baseUrlApi, interceptors: []));
    return true;
  }
}
