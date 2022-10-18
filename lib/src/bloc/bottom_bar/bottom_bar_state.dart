import '../../commons/base_state.dart';
import '../../model/views/bottom_bar/bottom_bar_item.dart';

class BottomBarState extends BaseState {
  BottomBarState({required this.tab});
  final MainTab tab;
  @override
  List<Object?> get props => [tab];
}
