import '../../commons/base_cubit.dart';
import '../../model/views/bottom_bar/bottom_bar_item.dart';
import 'bottom_bar_state.dart';

class BottomBarCubit extends BaseCubit<BottomBarState> {
  BottomBarCubit() : super(BottomBarState(tab: MainTab.homePage));
  void updateToggle(MainTab tabSelected) {
    emit(BottomBarState(tab: tabSelected));
  }
}
