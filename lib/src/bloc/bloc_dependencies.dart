import 'package:get_it/get_it.dart';

import 'bottom_bar/bottom_bar_cubit.dart';
import 'popular_cooking/popular_cubit.dart';

class BlocDependencies {
  static void int(GetIt injector) {
    injector.registerFactory<BottomBarCubit>(() => BottomBarCubit());
    injector.registerFactory<PopularCookingCubit>(
        () => PopularCookingCubit(injector()));
  }
}
