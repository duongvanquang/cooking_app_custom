import 'package:cooking_app/src/commons/app_colors.dart';
import 'package:cooking_app/src/widgets/add_icon_widget.dart';
import 'package:cooking_app/src/widgets/big_text.dart';
import 'package:cooking_app/src/widgets/small_text.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:auto_route/auto_route.dart';

import 'package:flutter/material.dart';

import '../constance/assets_path.dart';
import '../routes/app_router.dart';

class BodyHomePage extends StatefulWidget {
  const BodyHomePage({Key? key}) : super(key: key);

  @override
  State<BodyHomePage> createState() => _BodyHomePageState();
}

class _BodyHomePageState extends State<BodyHomePage> {
  final PageController _pageController = PageController(viewportFraction: 0.85);
  var _currenValuePage = 0.0;
  final double _scaleFactor = 0.8;
  final double _height = 220.0;
  @override
  void initState() {
    _pageController.addListener(() {
      setState(() {
        _currenValuePage = _pageController.page!;
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height / 3.5,
          child: PageView.builder(
              controller: _pageController,
              itemCount: 5,
              itemBuilder: (context, position) {
                return _buildPageItem(position);
              }),
        ),
        DotsIndicator(
          dotsCount: 5,
          position: _currenValuePage,
          decorator: DotsDecorator(
            activeColor: AppColors.mainColor,
            size: const Size.square(9.0),
            activeSize: const Size(18.0, 9.0),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0)),
          ),
        ),
        const SizedBox(height: 30),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            children: [
              BigText(
                  color: Colors.black,
                  size: 15,
                  textTitle: tr('home_page.popular_text')),
              const SizedBox(width: 10),
              const BigText(color: Colors.black26, size: 20, textTitle: '.'),
              const SizedBox(width: 10),
              SmallText(text: tr('home_page.food_pairing_text'))
            ],
          ),
        ),
        const SizedBox(height: 7),
        ListView.builder(
            padding: EdgeInsets.zero,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 10,
            itemBuilder: (BuildContext context, index) {
              return GestureDetector(
                onTap: () async {
                  await context.router.push(const DetailFoodPopularRoute());
                },
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                  child: Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width / 4,
                        height: MediaQuery.of(context).size.height / 10,
                        decoration: BoxDecoration(
                            color: Colors.white38,
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                                image: AssetImage(ImageAssetPath.imageFood1),
                                fit: BoxFit.cover)),
                      ),
                      Expanded(
                        child: Container(
                          height: MediaQuery.of(context).size.height / 10,
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(15),
                                  topRight: Radius.circular(15)),
                              color: Colors.white),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 7),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const BigText(
                                      color: Colors.black,
                                      size: 15,
                                      textTitle:
                                          'Nutritious fruit meal in China'),
                                  const SizedBox(height: 5),
                                  const SmallText(
                                      text: 'With chinese characteristics'),
                                  const SizedBox(height: 5),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      AddIconWidget(
                                          icon: Icons.circle_sharp,
                                          iconColor: AppColors.iconColor1,
                                          text: tr('home_page.title_icon1')),
                                      AddIconWidget(
                                          icon: Icons.location_on,
                                          iconColor: AppColors.mainColor,
                                          text: tr('home_page.title_icon2')),
                                      AddIconWidget(
                                          icon: Icons.access_alarms_rounded,
                                          iconColor: AppColors.iconColor2,
                                          text: tr('home_page.title_icon3'))
                                    ],
                                  )
                                ]),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              );
            }),
      ],
    );
  }

  Widget _buildPageItem(int index) {
    Matrix4 matrix4 = Matrix4.identity();
    if (index == _currenValuePage.floor()) {
      var currenScale = 1 - (_currenValuePage - index) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currenScale) / 2;
      matrix4 = Matrix4.diagonal3Values(1, currenScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currenValuePage.floor() + 1) {
      var currenScale =
          _scaleFactor + (_currenValuePage - index + 1) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currenScale) / 2;
      matrix4 = Matrix4.diagonal3Values(1, currenScale, 1);
      matrix4 = Matrix4.diagonal3Values(1, currenScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currenValuePage.floor() - 1) {
      var currenScale = 1 - (_currenValuePage - index) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currenScale) / 2;
      matrix4 = Matrix4.diagonal3Values(1, currenScale, 1);
      matrix4 = Matrix4.diagonal3Values(1, currenScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else {
      var currScale = 0.8;
      matrix4 = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, _height * (1 - _scaleFactor) / 2, 1);
    }
    return Transform(
      transform: matrix4,
      child: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 5,
            margin: const EdgeInsets.symmetric(horizontal: 5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: index.isEven ? AppColors.mainColor : AppColors.paraColor,
                image: const DecorationImage(
                    image: AssetImage(ImageAssetPath.imageFood1),
                    fit: BoxFit.cover)),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height / 8,
              margin: const EdgeInsets.only(
                  left: 20, right: 20, top: 50, bottom: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                        color: AppColors.primaryMonoTints0,
                        blurRadius: 5.0,
                        offset: Offset(0, 5))
                  ]),
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BigText(
                        color: AppColors.titleColor,
                        size: 15,
                        textTitle: tr('home_page.title_food1')),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Wrap(
                            children: List.generate(
                                5,
                                (index) => const Icon(
                                      Icons.star,
                                      color: AppColors.mainColor,
                                      size: 15,
                                    ))),
                        const SizedBox(width: 10),
                        const SmallText(text: '4.5'),
                        const SizedBox(width: 10),
                        const SmallText(text: '1287'),
                        const SizedBox(width: 10),
                        const SmallText(text: 'comments'),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AddIconWidget(
                            icon: Icons.circle_sharp,
                            iconColor: AppColors.iconColor1,
                            text: tr('home_page.title_icon1')),
                        AddIconWidget(
                            icon: Icons.location_on,
                            iconColor: AppColors.mainColor,
                            text: tr('home_page.title_icon2')),
                        AddIconWidget(
                            icon: Icons.access_alarms_rounded,
                            iconColor: AppColors.iconColor2,
                            text: tr('home_page.title_icon3'))
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
