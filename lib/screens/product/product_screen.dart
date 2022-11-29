import 'package:carousel_slider/carousel_slider.dart';
import 'package:digikala/screens/product/product_features.dart';
import 'package:digikala/screens/product/product_colors.dart';
import 'package:digikala/screens/product/product_description.dart';
import 'package:digikala/screens/product/product_header_amazing.dart';
import 'package:digikala/screens/product/product_interaction.dart';
import 'package:digikala/utils/colors.dart';
import 'package:digikala/utils/dimensions.dart';
import 'package:digikala/widgets/big_text.dart';
import 'package:digikala/widgets/carousel_slider%20_widget.dart';
import 'package:digikala/widgets/product_gallery_carousel_slider_widget.dart';
import 'package:digikala/widgets/small_text.dart';
import 'package:digit_to_persian_word/digit_to_persian_word.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.only(
                  top: Dimensions.height10,
                  left: Dimensions.width20,
                  right: Dimensions.width20),
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.close,
                    size: Dimensions.height30 * .7,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.favorite_border_outlined,
                        size: Dimensions.height30 * .7,
                      ),
                      SizedBox(
                        width: Dimensions.width20,
                      ),
                      Stack(
                        children: [
                          Positioned(
                            child: Container(
                                height: Dimensions.height45,
                                width: Dimensions.width30 * 1.3,
                                child: Icon(
                                  Icons.shopping_cart_outlined,
                                  size: Dimensions.height30 * .7,
                                )),
                          ),
                          Positioned(
                              right: 0,
                              bottom: 5,
                              child: Container(
                                decoration: BoxDecoration(
                                    color: AppColors.mainColor,
                                    borderRadius: BorderRadius.circular(
                                        Dimensions.radius10 / 2)),
                                child: SmallText(
                                  text: "2",
                                  color: Colors.white,
                                ),
                                padding: EdgeInsets.symmetric(
                                    vertical: 2, horizontal: 8),
                              ))
                        ],
                      ),
                      SizedBox(
                        width: Dimensions.width20,
                      ),
                      Icon(
                        Icons.more_vert_outlined,
                        size: Dimensions.height30 * .7,
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade300,
                    blurRadius: 5,
                    offset: const Offset(0, 5), // Shadow position
                  ),
                ],
              ),
              padding: EdgeInsets.symmetric(
                  horizontal: Dimensions.width20,
                  vertical: Dimensions.height15),
              child: Column(
                children: [
                  ProductAmazingHeader(),
                  SizedBox(
                    height: Dimensions.height10,
                  ),
                  ProductGalleryCarouselSliderWidget(),
                  BigText(
                    text:
                        "گوشی موبایل اپل مدل iPhone 13 Pro Max A2644 دو سیم‌ کارت ظرفیت 256 گیگابایت و رم 6 گیگابایت",
                    maxLine: 2,
                    fontWeight: FontWeight.bold,
                    size: Dimensions.font16 * .9,
                  ),
                  SizedBox(
                    height: Dimensions.height15,
                  ),
                  ProductInteraction(),
                  Row(
                    children: [
                      BigText(
                        text: "رنگ :",
                        size: Dimensions.font16 * .9,
                      ),
                      BigText(
                        text: "سبز",
                        size: Dimensions.font16 * .9,
                      )
                    ],
                  ),
                  ProductColors()
                ],
              ),
            ),
            ProductDescription(),
            ProductFeatures(),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(
            horizontal: Dimensions.width20, vertical: Dimensions.height10),
        decoration: BoxDecoration(color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              blurRadius: 5,
              offset: const Offset(0,5), // Shadow position
            ),
          ],),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: Dimensions.width10,vertical: Dimensions.height15*1.3),
              decoration: BoxDecoration(
                  color: AppColors.mainColor,
                  borderRadius:
                      BorderRadius.circular(Dimensions.radius10 * .7),

              ),
              child: SmallText(
                text: "افزودن به سبد خرید",
                color: Colors.white,
              ),
            ),
            Directionality(
              textDirection: TextDirection.ltr,
              child: Container(
                height: Dimensions.height45*1.3,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: Dimensions.width10),
                          decoration: BoxDecoration(
                              color: AppColors.mainColor,
                              borderRadius:
                                  BorderRadius.circular(Dimensions.radius20)),
                          child: SmallText(
                            text: "2%",
                            fontFamily: "persian_number",
                            color: Colors.white,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: Dimensions.height10),
                          child: SmallText(
                            text: DigitFormat.convert("458100", separator: ","),
                            fontFamily: "persian_number",
                            color: Colors.grey,
                            textDecoration: TextDecoration.lineThrough,
                          ),
                        ),

                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: Dimensions.width10),
                          child: SmallText(
                            text: "تومان",
                            fontFamily: "persian_number",

                          ),
                        ),
                        BigText(
                          text: DigitFormat.convert("250000", separator: ","),
                          fontFamily: "persian_number",
                          fontWeight: FontWeight.bold,
                          size: Dimensions.font16,

                        ),

                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
