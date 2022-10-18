import 'package:cooking_app/src/commons/app_colors.dart';
import 'package:cooking_app/src/widgets/big_text.dart';
import 'package:cooking_app/src/widgets/body_home_page.dart';
import 'package:cooking_app/src/widgets/small_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

import '../app_dependencies.dart';
import '../bloc/popular_cooking/popular_cubit.dart';
import '../routes/app_router.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _popularCubit = AppDependencies.injector.get<PopularCookingCubit>();

  @override
  void initState() {
    _popularCubit.getCookingPopular();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Container(
        margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 45),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                BigText(
                    color: AppColors.mainColor,
                    size: 15,
                    textTitle: tr('home_page.title_appbar')),
                Row(
                  children: [
                    SmallText(
                      text: tr('home_page.title_small'),
                      color: Colors.black54,
                    ),
                    const Icon(Icons.arrow_drop_down_rounded)
                  ],
                )
              ],
            ),
            GestureDetector(
              onTap: () =>
                  context.router.push(const RecommenededFoodDetailRoute()),
              child: Container(
                width: 45,
                height: 45,
                child: const Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: AppColors.mainColor),
              ),
            )
          ],
        ),
      ),
      const Expanded(child: SingleChildScrollView(child: BodyHomePage())),
    ]));
  }
}
