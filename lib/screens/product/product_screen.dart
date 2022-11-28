import 'package:carousel_slider/carousel_slider.dart';
import 'package:digikala/utils/colors.dart';
import 'package:digikala/utils/dimensions.dart';
import 'package:digikala/widgets/big_text.dart';
import 'package:digikala/widgets/carousel_slider%20_widget.dart';
import 'package:digikala/widgets/product_gallery_carousel_slider_widget.dart';
import 'package:digikala/widgets/small_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  int endTime = DateTime.now().millisecondsSinceEpoch + 100000000 * 30;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.all(Dimensions.height20),
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.close,
                    size: Dimensions.height30,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.favorite_border_outlined,
                        size: Dimensions.height30,
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
                                  size: Dimensions.height30,
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
                        size: Dimensions.height30,
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              padding: EdgeInsets.symmetric(horizontal: Dimensions.width20*.5),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: Dimensions.width20,right:Dimensions.width20,bottom: Dimensions.height15 ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                        border: Border(bottom: BorderSide(color: AppColors.mainColor),)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        BigText(
                          text: "پیشنهاد شگفت انگیز",
                          size: Dimensions.font16 * .8,
                          fontWeight: FontWeight.bold,
                          color: AppColors.mainColor,
                        ),
                        Directionality(
                            textDirection: TextDirection.ltr,
                            child: CountdownTimer(
                              endTime: endTime,
                              textStyle: TextStyle(
                                fontSize: Dimensions.font16 *.8,
                                fontFamily: "persian_number",
                                color: AppColors.mainColor,
                                fontWeight: FontWeight.w600,
                              ),
                            ))
                      ],
                    ),
                  ),
                  SizedBox(height: Dimensions.height10,),
                  ProductGalleryCarouselSliderWidget(),

                  
                  
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
