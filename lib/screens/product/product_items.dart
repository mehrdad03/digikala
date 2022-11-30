import 'package:digikala/utils/colors.dart';
import 'package:digikala/utils/dimensions.dart';
import 'package:digikala/widgets/product_title.dart';
import 'package:digikala/widgets/small_text.dart';
import 'package:digit_to_persian_word/digit_to_persian_word.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductItems extends StatelessWidget {
  const ProductItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(Dimensions.height20),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            blurRadius: 5,
            offset: const Offset(0, 1), // Shadow position
          ),
        ],
      ),
      child: Column(

        children: [
          Container(
            padding: EdgeInsets.symmetric( vertical: Dimensions.height20),
            decoration: BoxDecoration(
                color: Colors.white,
                border:Border(bottom: BorderSide(
                    color: Colors.grey.shade300
                ))
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  "assets/images/products/p2.jpg",
                  width: Dimensions.width30 * 4,
                ),
                SizedBox(width: Dimensions.width20,),
                Expanded(
                  child: Column(
                    children: [
                      ProductTitle(
                        text:
                        "تبلت سامسونگ مدل Galaxy Tab A7 Lite ظرفیت 32 گیگابایت ",
                        fontWeight: FontWeight.bold,size: Dimensions.font16*.8,
                      ),
                      SizedBox(height: Dimensions.height30,),
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
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  SmallText(
                                    text: DigitFormat.convert("458100", separator: ","),
                                    size: Dimensions.font16 ,
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
                              SizedBox(width: Dimensions.width10,),
                              SmallText(
                                text: "تومان",
                                size: Dimensions.font16 * .6,
                                fontWeight: FontWeight.bold,
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric( vertical: Dimensions.height20),
            decoration: BoxDecoration(
                color: Colors.white,
                border:Border(bottom: BorderSide(
                    color: Colors.grey.shade300
                ))
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  "assets/images/products/p1.jpg",
                  width: Dimensions.width30 * 4,
                ),
                SizedBox(width: Dimensions.width20,),
                Expanded(
                  child: Column(
                    children: [
                      ProductTitle(
                        text:
                        "تبلت سامسونگ مدل Galaxy Tab A7 Lite ظرفیت 32 گیگابایت ",
                        fontWeight: FontWeight.bold,size: Dimensions.font16*.8,
                      ),
                      SizedBox(height: Dimensions.height30,),
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
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  SmallText(
                                    text: DigitFormat.convert("458100", separator: ","),
                                    size: Dimensions.font16 ,
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
                              SizedBox(width: Dimensions.width10,),
                              SmallText(
                                text: "تومان",
                                size: Dimensions.font16 * .6,
                                fontWeight: FontWeight.bold,
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric( vertical: Dimensions.height20),
            decoration: BoxDecoration(
                color: Colors.white,
                border:Border(bottom: BorderSide(
                    color: Colors.grey.shade300
                ))
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  "assets/images/products/p3.jpg",
                  width: Dimensions.width30 * 4,
                ),
                SizedBox(width: Dimensions.width20,),
                Expanded(
                  child: Column(
                    children: [
                      ProductTitle(
                        text:
                        "تبلت سامسونگ مدل Galaxy Tab A7 Lite ظرفیت 32 گیگابایت ",
                        fontWeight: FontWeight.bold,size: Dimensions.font16*.8,
                      ),
                      SizedBox(height: Dimensions.height30,),
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
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  SmallText(
                                    text: DigitFormat.convert("458100", separator: ","),
                                    size: Dimensions.font16 ,
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
                              SizedBox(width: Dimensions.width10,),
                              SmallText(
                                text: "تومان",
                                size: Dimensions.font16 * .6,
                                fontWeight: FontWeight.bold,
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric( vertical: Dimensions.height20),
            decoration: BoxDecoration(
                color: Colors.white,
                border:Border(bottom: BorderSide(
                    color: Colors.grey.shade300
                ))
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  "assets/images/products/p4.jpg",
                  width: Dimensions.width30 * 4,
                ),
                SizedBox(width: Dimensions.width20,),
                Expanded(
                  child: Column(
                    children: [
                      ProductTitle(
                        text:
                        "تبلت سامسونگ مدل Galaxy Tab A7 Lite ظرفیت 32 گیگابایت ",
                        fontWeight: FontWeight.bold,size: Dimensions.font16*.8,
                      ),
                      SizedBox(height: Dimensions.height30,),
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
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  SmallText(
                                    text: DigitFormat.convert("458100", separator: ","),
                                    size: Dimensions.font16 ,
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
                              SizedBox(width: Dimensions.width10,),
                              SmallText(
                                text: "تومان",
                                size: Dimensions.font16 * .6,
                                fontWeight: FontWeight.bold,
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric( vertical: Dimensions.height20),
            decoration: BoxDecoration(
                color: Colors.white,
                border:Border(bottom: BorderSide(
                    color: Colors.grey.shade300
                ))
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  "assets/images/products/p1.jpg",
                  width: Dimensions.width30 * 4,
                ),
                SizedBox(width: Dimensions.width20,),
                Expanded(
                  child: Column(
                    children: [
                      ProductTitle(
                        text:
                        "تبلت سامسونگ مدل Galaxy Tab A7 Lite ظرفیت 32 گیگابایت ",
                        fontWeight: FontWeight.bold,size: Dimensions.font16*.8,
                      ),
                      SizedBox(height: Dimensions.height30,),
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
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  SmallText(
                                    text: DigitFormat.convert("458100", separator: ","),
                                    size: Dimensions.font16 ,
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
                              SizedBox(width: Dimensions.width10,),
                              SmallText(
                                text: "تومان",
                                size: Dimensions.font16 * .6,
                                fontWeight: FontWeight.bold,
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric( vertical: Dimensions.height20),
            decoration: BoxDecoration(
                color: Colors.white,
                border:Border(bottom: BorderSide(
                    color: Colors.grey.shade300
                ))
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  "assets/images/products/p1.jpg",
                  width: Dimensions.width30 * 4,
                ),
                SizedBox(width: Dimensions.width20,),
                Expanded(
                  child: Column(
                    children: [
                      ProductTitle(
                        text:
                        "تبلت سامسونگ مدل Galaxy Tab A7 Lite ظرفیت 32 گیگابایت ",
                        fontWeight: FontWeight.bold,size: Dimensions.font16*.8,
                      ),
                      SizedBox(height: Dimensions.height30,),
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
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  SmallText(
                                    text: DigitFormat.convert("458100", separator: ","),
                                    size: Dimensions.font16 ,
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
                              SizedBox(width: Dimensions.width10,),
                              SmallText(
                                text: "تومان",
                                size: Dimensions.font16 * .6,
                                fontWeight: FontWeight.bold,
                              ),
                            ],
                          )
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
    );
  }
}
