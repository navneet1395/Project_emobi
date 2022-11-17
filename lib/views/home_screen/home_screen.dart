import 'package:e_mobi/const/const.dart';

import '../../widgets/button_home.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: lightGrey,
      width: context.screenWidth,
      height: context.screenHeight,
      padding: const EdgeInsets.all(12),
      child: SafeArea(
          child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            height: context.screenHeight * 0.05,
            color: lightGrey,
            child: const TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                suffixIcon: Icon(Icons.search),
                filled: true,
                fillColor: whiteColor,
                hintText: search,
                hintStyle: TextStyle(color: textfieldGrey),
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  //Swiper Area
                  VxSwiper.builder(
                      aspectRatio: 16 / 9,
                      autoPlay: true,
                      height: 150,
                      enlargeCenterPage: true,
                      itemCount: slidersList.length,
                      itemBuilder: (context, index) {
                        return Image.asset(slidersList[index],
                                fit: BoxFit.fitWidth)
                            .box
                            .rounded
                            .clip(Clip.antiAlias)
                            .margin(const EdgeInsets.symmetric(horizontal: 5))
                            .make();
                      }),
                  // 5.heightBox,
                  //dealsBox
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(
                        2,
                        (index) => HomeButton(
                              height: context.screenHeight * 0.15,
                              width: context.screenWidth / 2.5,
                              imageName:
                                  index == 0 ? icTodaysDeal : icFlashDeal,
                              title: index == 0 ? todayDeal : flashdeal,
                            )),
                  ),
                  // 5.heightBox,
                  //second Swiper area
                  VxSwiper.builder(
                      aspectRatio: 16 / 9,
                      autoPlay: true,
                      height: 150,
                      enlargeCenterPage: true,
                      itemCount: sliderList2.length,
                      itemBuilder: (context, index) {
                        return Image.asset(sliderList2[index],
                                fit: BoxFit.fitWidth)
                            .box
                            .rounded
                            .clip(Clip.antiAlias)
                            .margin(const EdgeInsets.symmetric(horizontal: 5))
                            .make();
                      }),
                  //three button
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(
                        3,
                        (index) => HomeButton(
                              height: context.screenHeight * 0.15,
                              width: context.screenWidth / 3.5,
                              imageName: index == 0
                                  ? ictopCategories
                                  : index == 1
                                      ? icbrands
                                      : icSeller,
                              title: index == 0
                                  ? topCategories
                                  : index == 1
                                      ? brand
                                      : topSellers,
                            )),
                  ),
                  //Featured Category
                  Align(
                      alignment: Alignment.centerLeft,
                      child: featuredCategories.text
                          .color(darkFontGrey)
                          .size(18)
                          .fontFamily(semibold)
                          .make()),
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}
