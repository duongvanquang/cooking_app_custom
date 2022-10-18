import 'package:easy_localization/easy_localization.dart';

import '../../constance/assets_path.dart';
import '../../model/views/bottom_bar/bottom_bar_item.dart';

class BottomBarRepository {
  List<BottomBarItem> get getTabs => [
        BottomBarItem(MainTab.homePage, ImageAssetPath.bottomPotential,
            tr('bottom_bar.potential')),
        BottomBarItem(MainTab.detailPage, ImageAssetPath.bottomTarget,
            tr('bottom_bar.target')),
        BottomBarItem(MainTab.settingPage, ImageAssetPath.bottomPlan,
            tr('bottom_bar.plan'))
      ];
}
