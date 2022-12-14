import 'package:cooking_app/src/commons/app_icon.dart';
import 'package:cooking_app/src/widgets/food_popular/expandable_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../commons/app_colors.dart';
import '../../constance/assets_path.dart';
import '../add_icon_widget.dart';
import '../big_text.dart';
import '../small_text.dart';

class DetailFoodPopular extends StatefulWidget {
  const DetailFoodPopular({Key? key}) : super(key: key);

  @override
  State<DetailFoodPopular> createState() => _DetailFoodPopularState();
}

class _DetailFoodPopularState extends State<DetailFoodPopular> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: MediaQuery.of(context).size.height / 3,
              decoration: const BoxDecoration(
                  color: Colors.red,
                  image: DecorationImage(
                      image: AssetImage(ImageAssetPath.imageFood1),
                      fit: BoxFit.cover)),
            )),
        Positioned(
            top: 45,
            left: 20,
            right: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: const AppIcon(icon: Icons.arrow_back_ios)),
                const AppIcon(icon: Icons.shopping_cart_rounded)
              ],
            )),
        Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: MediaQuery.of(context).size.height / 3.2,
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                color: Colors.white,
              ),
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
                  ),
                  const SizedBox(height: 15),
                  const BigText(
                      color: Colors.black, size: 15, textTitle: 'introduce'),
                  const Expanded(
                    child: SingleChildScrollView(
                      child: ExpandableText(
                          text: '?????ng ?????u trong danh s??ch Street Food Blogger ???????c quan t??m ???? l?? anh ch??ng H??n Qu???c Woossi. Nh???ng video c???a Woossi khi ra ???l????? ?????u l???t top Trending c???a Youtube. Woossi ??? h???u l?????ng fan kh???ng l??? ??? Vi???t Nam v???i h??n 1,4 tri???u subcribes tr??n k??nh Youtube v?? 718K followers tr??n fanpage c???a m??nh. R???t b???t ng??? khi v?? m???t blogger tr??? tu???i, nh??ng t???p fan c???a anh ch??ng ph??n b??? ?????u t??? 18 ??? 44 tu???i. ??i???u ???? ch???ng t??? c??ch l??m blog c???a Woossi thu h??t ???????c m???i t???ng l???p l???a tu???i. L?????ng insight c??ng kh?? ???n t?????ng v???i 2.400 l?????t reaction/post' +
                              'C??ng ??i???m qua m???t ch??t v??? c??c campaign m?? ch??ng trai n??y t???ng th???c hi???n nh??. G???n ????y nh???t, Lavie Sparkling k???t h???p v???i anh trong chi???n d???ch ra m???t s???n ph???m m???i l?? Lavie Sparkling, ho???c th????ng hi???u snack Lays ???? k???t h???p v???i Woossi th???c hi???n livestream ????? th???c hi???n Lays Challenge hay ??? m???t chi???n d???ch kh??c, b??i post cho tr?? s???a Lipton c???a anh c??ng ???? thu h??t ???????c 2,3K reaction c??ng h??ng ch???c b??nh lu???n kh??c. '),
                    ),
                  )
                ],
              ),
            )),
      ]),
      bottomNavigationBar: Container(
        height: MediaQuery.of(context).size.height / 7.5,
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        decoration: const BoxDecoration(
            color: AppColors.buttonBackgroundColor,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40), topRight: Radius.circular(40))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.white),
              child: Row(
                children: const [
                  Icon(Icons.remove, color: AppColors.signColor),
                  SizedBox(width: 5),
                  BigText(
                      color: AppColors.titleColor, size: 20, textTitle: '0'),
                  SizedBox(width: 5),
                  Icon(
                    Icons.add,
                    color: AppColors.signColor,
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: const BigText(
                  color: Colors.white,
                  size: 15,
                  textTitle: '\$10 | And to cart'),
              decoration: BoxDecoration(
                color: AppColors.mainColor,
                borderRadius: BorderRadius.circular(20),
              ),
            )
          ],
        ),
      ),
    );
  }
}
