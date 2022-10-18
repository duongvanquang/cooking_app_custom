import 'package:cooking_app/src/model/services/popular/popular_response.dart';
import 'package:get_it/get_it.dart';

class ModelDependencies {
  static void init(GetIt injector) {
    injector.registerFactory<PopularResponse>(() => PopularResponse());
  }
}
