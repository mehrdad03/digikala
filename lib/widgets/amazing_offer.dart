import 'package:digikala/utils/colors.dart';
import 'package:digikala/utils/dimensions.dart';
import 'package:digikala/widgets/product_title.dart';
import 'package:digikala/widgets/small_text.dart';
import 'package:digit_to_persian_word/digit_to_persian_word.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';

class AmazingOffer extends StatefulWidget {
  const AmazingOffer({Key? key}) : super(key: key);

  @override
  State<AmazingOffer> createState() => _AmazingOfferState();
}

class _AmazingOfferState extends State<AmazingOffer> {
  int endTime = DateTime.now().millisecondsSinceEpoch + 100000000 * 30;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        padding: EdgeInsets.all(Dimensions.height20),
        color: AppColors.mainColor,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: Dimensions.width20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/icons/pishnahad.png",
                    width: Dimensions.width30 * 3,
                  ),
                  SizedBox(
                    height: Dimensions.height10,
                  ),
                  Image.asset(
                    "assets/images/icons/pishnahad_box.png",
                    width: Dimensions.width30 * 4,
                  ),
                  SizedBox(
                    height: Dimensions.height30,
                  ),
                  Row(
                    children: [
                      SmallText(text: "مشاهده همه", color: Colors.white),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Colors.white,
                        size: Dimensions.width10,
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: Dimensions.width10),
              width: Dimensions.width30 * 4.6,
              height: Dimensions.height45 * 5.8,
              padding: EdgeInsets.all(Dimensions.height10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius10),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/products/p1.jpg",
                    width: Dimensions.width30 * 4,
                  ),
                  SizedBox(
                    height: Dimensions.height10 * .4,
                  ),
                  ProductTitle(
                    text:
                        "تبلت سامسونگ مدل Galaxy Tab A7 Lite ظرفیت 32 گیگابایت ",
                    fontWeight: FontWeight.bold,
                  ),
                  SizedBox(
                    height: Dimensions.height20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: Dimensions.width10 * .7,
                            vertical: Dimensions.height10 / 5),
                        decoration: BoxDecoration(
                            color: AppColors.mainColor,
                            borderRadius:
                                BorderRadius.circular(Dimensions.radius10)),
                        child: SmallText(
                          text: "20%",
                          color: Colors.white,
                          fontFamily: "persian_number",
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SmallText(
                            text: DigitFormat.convert("458100", separator: ","),
                            size: Dimensions.font16 * .8,
                            fontWeight: FontWeight.bold,
                            fontFamily: "persian_number",
                          ),
                          SmallText(
                            text: DigitFormat.convert("123456", separator: ","),
                            color: Colors.grey,
                            size: Dimensions.font16 * .7,
                            fontWeight: FontWeight.bold,
                            textDecoration: TextDecoration.lineThrough,
                            fontFamily: "persian_number",
                          ),
                        ],
                      ),
                      SmallText(
                        text: "تومان",
                        size: Dimensions.font16 * .6,
                        fontWeight: FontWeight.bold,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: Dimensions.height20,
                  ),
                  Directionality(
                    textDirection: TextDirection.ltr,
                    child: Container(
                      padding: EdgeInsets.all(Dimensions.height10 * .5),
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(Dimensions.radius10),
                          color: Colors.black12),
                      child: CountdownTimer(
                        endTime: endTime,
                        textStyle: TextStyle(
                          fontSize: Dimensions.font16 * .7,
                          fontFamily: "persian_number",
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: Dimensions.width10),
              width: Dimensions.width30 * 4.6,
              height: Dimensions.height45 * 5.8,
              padding: EdgeInsets.all(Dimensions.height10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius10),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/products/p1.jpg",
                    width: Dimensions.width30 * 4,
                  ),
                  SizedBox(
                    height: Dimensions.height10 * .4,
                  ),
                  ProductTitle(
                    text:
                        "تبلت سامسونگ مدل Galaxy Tab A7 Lite ظرفیت 32 گیگابایت ",
                    fontWeight: FontWeight.bold,
                  ),
                  SizedBox(
                    height: Dimensions.height20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: Dimensions.width10 * .7,
                            vertical: Dimensions.height10 / 5),
                        decoration: BoxDecoration(
                            color: AppColors.mainColor,
                            borderRadius:
                                BorderRadius.circular(Dimensions.radius10)),
                        child: SmallText(
                          text: "20%",
                          color: Colors.white,
                          fontFamily: "persian_number",
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SmallText(
                            text: DigitFormat.convert("458100", separator: ","),
                            size: Dimensions.font16 * .8,
                            fontWeight: FontWeight.bold,
                            fontFamily: "persian_number",
                          ),
                          SmallText(
                            text: DigitFormat.convert("123456", separator: ","),
                            color: Colors.grey,
                            size: Dimensions.font16 * .7,
                            fontWeight: FontWeight.bold,
                            textDecoration: TextDecoration.lineThrough,
                            fontFamily: "persian_number",
                          ),
                        ],
                      ),
                      SmallText(
                        text: "تومان",
                        size: Dimensions.font16 * .6,
                        fontWeight: FontWeight.bold,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: Dimensions.height20,
                  ),
                  Directionality(
                    textDirection: TextDirection.ltr,
                    child: Container(
                      padding: EdgeInsets.all(Dimensions.height10 * .5),
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(Dimensions.radius10),
                          color: Colors.black12),
                      child: CountdownTimer(
                        endTime: endTime,
                        textStyle: TextStyle(
                          fontSize: Dimensions.font16 * .7,
                          fontFamily: "persian_number",
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: Dimensions.width10),
              width: Dimensions.width30 * 4.6,
              height: Dimensions.height45 * 5.8,
              padding: EdgeInsets.all(Dimensions.height10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius10),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/products/p1.jpg",
                    width: Dimensions.width30 * 4,
                  ),
                  SizedBox(
                    height: Dimensions.height10 * .4,
                  ),
                  ProductTitle(
                    text:
                    "تبلت سامسونگ مدل Galaxy Tab A7 Lite ظرفیت 32 گیگابایت ",
                    fontWeight: FontWeight.bold,
                  ),
                  SizedBox(
                    height: Dimensions.height20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: Dimensions.width10 * .7,
                            vertical: Dimensions.height10 / 5),
                        decoration: BoxDecoration(
                            color: AppColors.mainColor,
                            borderRadius:
                            BorderRadius.circular(Dimensions.radius10)),
                        child: SmallText(
                          text: "20%",
                          color: Colors.white,
                          fontFamily: "persian_number",
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SmallText(
                            text: DigitFormat.convert("458100", separator: ","),
                            size: Dimensions.font16 * .8,
                            fontWeight: FontWeight.bold,
                            fontFamily: "persian_number",
                          ),
                          SmallText(
                            text: DigitFormat.convert("123456", separator: ","),
                            color: Colors.grey,
                            size: Dimensions.font16 * .7,
                            fontWeight: FontWeight.bold,
                            textDecoration: TextDecoration.lineThrough,
                            fontFamily: "persian_number",
                          ),
                        ],
                      ),
                      SmallText(
                        text: "تومان",
                        size: Dimensions.font16 * .6,
                        fontWeight: FontWeight.bold,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: Dimensions.height20,
                  ),
                  Directionality(
                    textDirection: TextDirection.ltr,
                    child: Container(
                      padding: EdgeInsets.all(Dimensions.height10 * .5),
                      decoration: BoxDecoration(
                          borderRadius:
                          BorderRadius.circular(Dimensions.radius10),
                          color: Colors.black12),
                      child: CountdownTimer(
                        endTime: endTime,
                        textStyle: TextStyle(
                          fontSize: Dimensions.font16 * .7,
                          fontFamily: "persian_number",
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: Dimensions.width10),
              width: Dimensions.width30 * 4.6,
              height: Dimensions.height45 * 5.8,
              padding: EdgeInsets.all(Dimensions.height10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius10),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/products/p1.jpg",
                    width: Dimensions.width30 * 4,
                  ),
                  SizedBox(
                    height: Dimensions.height10 * .4,
                  ),
                  ProductTitle(
                    text:
                    "تبلت سامسونگ مدل Galaxy Tab A7 Lite ظرفیت 32 گیگابایت ",
                    fontWeight: FontWeight.bold,
                  ),
                  SizedBox(
                    height: Dimensions.height20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: Dimensions.width10 * .7,
                            vertical: Dimensions.height10 / 5),
                        decoration: BoxDecoration(
                            color: AppColors.mainColor,
                            borderRadius:
                            BorderRadius.circular(Dimensions.radius10)),
                        child: SmallText(
                          text: "20%",
                          color: Colors.white,
                          fontFamily: "persian_number",
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SmallText(
                            text: DigitFormat.convert("458100", separator: ","),
                            size: Dimensions.font16 * .8,
                            fontWeight: FontWeight.bold,
                            fontFamily: "persian_number",
                          ),
                          SmallText(
                            text: DigitFormat.convert("123456", separator: ","),
                            color: Colors.grey,
                            size: Dimensions.font16 * .7,
                            fontWeight: FontWeight.bold,
                            textDecoration: TextDecoration.lineThrough,
                            fontFamily: "persian_number",
                          ),
                        ],
                      ),
                      SmallText(
                        text: "تومان",
                        size: Dimensions.font16 * .6,
                        fontWeight: FontWeight.bold,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: Dimensions.height20,
                  ),
                  Directionality(
                    textDirection: TextDirection.ltr,
                    child: Container(
                      padding: EdgeInsets.all(Dimensions.height10 * .5),
                      decoration: BoxDecoration(
                          borderRadius:
                          BorderRadius.circular(Dimensions.radius10),
                          color: Colors.black12),
                      child: CountdownTimer(
                        endTime: endTime,
                        textStyle: TextStyle(
                          fontSize: Dimensions.font16 * .7,
                          fontFamily: "persian_number",
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
