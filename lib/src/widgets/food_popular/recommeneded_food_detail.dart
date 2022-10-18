import 'package:cooking_app/src/commons/app_colors.dart';
import 'package:cooking_app/src/commons/app_icon.dart';
import 'package:cooking_app/src/widgets/big_text.dart';
import 'package:cooking_app/src/widgets/food_popular/expandable_text.dart';
import 'package:flutter/material.dart';

import '../../constance/assets_path.dart';

class RecommenededFoodDetail extends StatefulWidget {
  const RecommenededFoodDetail({Key? key}) : super(key: key);

  @override
  State<RecommenededFoodDetail> createState() => _RecommenededFoodDetailState();
}

class _RecommenededFoodDetailState extends State<RecommenededFoodDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 80,
            automaticallyImplyLeading: false,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: const AppIcon(
                    icon: Icons.clear,
                  ),
                ),
                const AppIcon(icon: Icons.add_shopping_cart)
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.zero,
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                width: double.maxFinite,
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: const Center(
                    child: BigText(
                        color: Colors.black,
                        size: 20,
                        textTitle: 'Chinese Side')),
              ),
            ),
            expandedHeight: 300,
            pinned: true,
            backgroundColor: Colors.white,
            flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
              ImageAssetPath.imageFood1,
              fit: BoxFit.cover,
              width: double.maxFinite,
            )),
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              child: const ExpandableText(
                  text:
                      '''Đứng đầu trong danh sách Street Food Blogger được quan tâm đó là anh chàng Hàn Quốc Woossi. Những video của Woossi khi ra “lò” đều lọt top Trending của Youtube. Woossi ở hữu lượng fan khổng lồ ở Việt Nam với hơn 1,4 triệu subcribes trên kênh Youtube và 718K followers trên fanpage của mình. Rất bất ngờ khi và một blogger trẻ tuổi, nhưng tập fan của anh chàng phân bố đều từ 18 – 44 tuổi. Điều đó chứng tỏ cách làm blog của Woossi thu hút được mọi tầng lớp lứa tuổi. Lượng insight cũng khá ấn tượng với 2.400 lượt reaction/post.Cùng điểm qua một chút về các campaign mà chàng trai này từng thực hiện nhé. Gần đây nhất, Lavie Sparkling kết hợp với anh trong chiến dịch ra mắt sản phẩm mới là Lavie Sparkling, hoặc thương hiệu snack Lays đã kết hợp với Woossi thực hiện livestream để thực hiện Lays Challenge hay ở một chiến dịch khác, bài post cho trà sữa Lipton của anh cũng đã thu hút được 2,3K reaction cùng hàng chục bình luận khác. Đứng đầu trong danh sách Street Food Blogger được quan tâm đó là anh chàng Hàn Quốc Woossi. Những video của Woossi khi ra “lò” đều lọt top Trending của Youtube. Woossi ở hữu lượng fan khổng lồ ở Việt Nam với hơn 1,4 triệu subcribes trên kênh Youtube và 718K followers trên fanpage của mình. Rất bất ngờ khi và một blogger trẻ tuổi, nhưng tập fan của anh chàng phân bố đều từ 18 – 44 tuổi. Điều đó chứng tỏ cách làm blog của Woossi thu hút được mọi tầng lớp lứa tuổi. Lượng insight cũng khá ấn tượng với 2.400 lượt reaction/post.Cùng điểm qua một chút về các campaign mà chàng trai này từng thực hiện nhé. Gần đây nhất, Lavie Sparkling kết hợp với anh trong chiến dịch ra mắt sản phẩm mới là Lavie Sparkling, hoặc thương hiệu snack Lays đã kết hợp với Woossi thực hiện livestream để thực hiện Lays Challenge hay ở một chiến dịch khác, bài post cho trà sữa Lipton của anh cũng đã thu hút được 2,3K reaction cùng hàng chục bình luận khác. Đứng đầu trong danh sách Street Food Blogger được quan tâm đó là anh chàng Hàn Quốc Woossi. Những video của Woossi khi ra “lò” đều lọt top Trending của Youtube. Woossi ở hữu lượng fan khổng lồ ở Việt Nam với hơn 1,4 triệu subcribes trên kênh Youtube và 718K followers trên fanpage của mình. Rất bất ngờ khi và một blogger trẻ tuổi, nhưng tập fan của anh chàng phân bố đều từ 18 – 44 tuổi. Điều đó chứng tỏ cách làm blog của Woossi thu hút được mọi tầng lớp lứa tuổi. Lượng insight cũng khá ấn tượng với 2.400 lượt reaction/post.Cùng điểm qua một chút về các campaign mà chàng trai này từng thực hiện nhé. Gần đây nhất, Lavie Sparkling kết hợp với anh trong chiến dịch ra mắt sản phẩm mới là Lavie Sparkling, hoặc thương hiệu snack Lays đã kết hợp với Woossi thực hiện livestream để thực hiện Lays Challenge hay ở một chiến dịch khác, bài post cho trà sữa Lipton của anh cũng đã thu hút được 2,3K reaction cùng hàng chục bình luận khác. '''),
            ),
          )
        ],
      ),
      bottomNavigationBar: Column(mainAxisSize: MainAxisSize.min, children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              AppIcon(
                iconSize: 23,
                icon: Icons.remove,
                bgColor: AppColors.mainColor,
                iconColor: Colors.white,
              ),
              BigText(color: Colors.black, size: 18, textTitle: '\$12.88 X 0'),
              AppIcon(
                iconSize: 23,
                icon: Icons.add,
                bgColor: AppColors.mainColor,
                iconColor: Colors.white,
              ),
            ],
          ),
        ),
        Container(
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
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white),
                  child:
                      const Icon(Icons.favorite, color: AppColors.mainColor)),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
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
      ]),
    );
  }
}
