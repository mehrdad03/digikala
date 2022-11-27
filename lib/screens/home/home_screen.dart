import 'package:digikala/utils/dimensions.dart';
import 'package:digikala/widgets/amazing_offer.dart';
import 'package:digikala/widgets/big_text.dart';
import 'package:digikala/widgets/main_search_box.dart';
import 'package:digikala/widgets/home_screen_icons.dart';
import 'package:digikala/widgets/carousel_slider%20_widget.dart';
import 'package:digikala/widgets/small_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int endTime = DateTime.now().millisecondsSinceEpoch + 100000000 * 30;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              const MainSearchBox(),
              SizedBox(
                height: Dimensions.height20,
              ),
              Expanded(
                child: ListView(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  children: [
                    const CarouselSliderWidget(),
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: Dimensions.width30,
                          vertical: Dimensions.height20),
                      child: const HomeScreenIcons(),
                    ),
                    const AmazingOffer(),
                    Padding(
                      padding: EdgeInsets.all(Dimensions.height20 * 1.1),
                      child: Container(
                        height: Dimensions.height45 * 4,
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(Dimensions.radius20),
                          image: const DecorationImage(
                            image:
                                ExactAssetImage('assets/images/banners/b1.jpg'),
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: Dimensions.width20),
                      child: Row(
                        children: [
                          Container(
                            height: Dimensions.height45 * 3,
                            width: Dimensions.height45 * 4,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(Dimensions.radius20),
                              image: const DecorationImage(
                                image: ExactAssetImage(
                                    'assets/images/banners/b3.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: Dimensions.width10 * .8,
                          ),
                          Container(
                            height: Dimensions.height45 * 3,
                            width: Dimensions.height45 * 4,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(Dimensions.radius20),
                              image: const DecorationImage(
                                image: ExactAssetImage(
                                    'assets/images/banners/b2.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.symmetric(vertical: Dimensions.height20),
                      child: Center(

                        child: BigText(text: "دسته بندی های دیجی کالا",  fontFamily: "iranYekan",fontWeight:FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: Dimensions.width30,vertical: Dimensions.height10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assets/images/categories/c1.png",
                                    width: 100,
                                  ),
                                  SizedBox(height: Dimensions.height10*.5,),
                                  SmallText(text: "کالای دیجیتال",fontWeight: FontWeight.w700,)
                                ],
                              ),
                              SizedBox(height: Dimensions.height30,),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assets/images/categories/c2.png",
                                    width: 100,
                                  ),
                                  SizedBox(height: Dimensions.height10*.5,),
                                  SmallText(text: "موبایل",fontWeight: FontWeight.w700,)
                                ],
                              ),
                              SizedBox(height: Dimensions.height30,),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assets/images/categories/c3.png",
                                    width: 100,
                                  ),
                                  SizedBox(height: Dimensions.height10*.5,),
                                  SmallText(text: "ابزارآلات صنعتی",fontWeight: FontWeight.w700,)
                                ],
                              ),
                              SizedBox(height: Dimensions.height30,),
                            ],
                          ),
                          Column(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assets/images/categories/c4.png",
                                    width: 100,
                                  ),
                                  SizedBox(height: Dimensions.height10*.5,),
                                  SmallText(text: "مد و پوشاک",fontWeight: FontWeight.w700,)
                                ],
                              ),
                              SizedBox(height: Dimensions.height30,),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assets/images/categories/c5.png",
                                    width: 100,
                                  ),
                                  SizedBox(height: Dimensions.height10*.5,),
                                  SmallText(text: "کالاهای سوپرمارکتی",fontWeight: FontWeight.w700,)
                                ],
                              ),
                              SizedBox(height: Dimensions.height30,),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assets/images/categories/c6.png",
                                    width: 100,
                                  ),
                                  SizedBox(height: Dimensions.height10*.5,),
                                  SmallText(text: "اسباب بازی",fontWeight: FontWeight.w700,)
                                ],
                              ),
                              SizedBox(height: Dimensions.height30,),
                            ],
                          ),
                          Column(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assets/images/categories/c7.png",
                                    width: 100,
                                  ),
                                  SizedBox(height: Dimensions.height10*.5,),
                                  SmallText(text: "محصولات بومی",fontWeight: FontWeight.w700,)
                                ],
                              ),
                              SizedBox(height: Dimensions.height30,),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assets/images/categories/c8.png",
                                    width: 100,
                                  ),
                                  SizedBox(height: Dimensions.height10*.5,),
                                  SmallText(text: "زیبایی و سلامت",fontWeight: FontWeight.w700,)
                                ],
                              ),
                              SizedBox(height: Dimensions.height30,),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assets/images/categories/c9.png",
                                    width: 100,
                                  ),
                                  SizedBox(height: Dimensions.height10*.5,),
                                  SmallText(text: "خانه و آشپزخانه",fontWeight: FontWeight.w700,)
                                ],
                              ),
                              SizedBox(height: Dimensions.height30,),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
