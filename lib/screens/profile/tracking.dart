import 'package:digikala/utils/colors.dart';
import 'package:digikala/utils/dimensions.dart';
import 'package:digikala/widgets/big_text.dart';
import 'package:digikala/widgets/small_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Tracking extends StatefulWidget {
  const Tracking({Key? key}) : super(key: key);

  @override
  State<Tracking> createState() => _TrackingState();
}

class _TrackingState extends State<Tracking> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            blurRadius: 5,
            offset: const Offset(0, 1), // Shadow position
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              padding: EdgeInsets.all(Dimensions.width20),
              child: BigText(
                text: "سفارش های من",
                size: Dimensions.font16,
              )),
          Container(
            padding: EdgeInsets.only(bottom: Dimensions.height20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Stack(
                      children: [
                        Positioned(
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: Dimensions.height20),
                            child: Column(
                              mainAxisAlignment:
                              MainAxisAlignment.start,
                              crossAxisAlignment:
                              CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "assets/images/tracking_icons/t1.png",
                                  width: 50,
                                ),
                                SizedBox(
                                  height: Dimensions.height10 * .5,
                                ),
                                SmallText(text: "در حال بردازش")
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          left: 15,
                          top: 5,
                          child: Container(
                              padding: EdgeInsets.symmetric(horizontal: Dimensions.height10/2,vertical: Dimensions.height10/4),
                              decoration: BoxDecoration(
                                color: AppColors.mainColor,
                                borderRadius: BorderRadius.circular(
                                    Dimensions.radius10/2),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.white12,
                                    blurRadius:0,
                                    offset: Offset(0, 1), // Shadow position
                                  ),
                                ],),
                              child:  SmallText(text:"25",color: Colors.white,fontFamily: 'persian_number',)
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    Stack(
                      children: [
                        Positioned(
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: Dimensions.height20),
                            child: Column(
                              mainAxisAlignment:
                              MainAxisAlignment.start,
                              crossAxisAlignment:
                              CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "assets/images/tracking_icons/t3.png",
                                  width: 50,
                                ),
                                SizedBox(
                                  height: Dimensions.height10 * .5,
                                ),
                                SmallText(text: "تحویل شده")
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          left: 15,
                          top: 5,
                          child: Container(
                              padding: EdgeInsets.symmetric(horizontal: Dimensions.height10/2,vertical: Dimensions.height10/4),
                              decoration: BoxDecoration(
                                color: AppColors.mainColor,
                                borderRadius: BorderRadius.circular(
                                    Dimensions.radius10/2),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.white12,
                                    blurRadius:0,
                                    offset: Offset(0, 1), // Shadow position
                                  ),
                                ],),
                              child:  SmallText(text:"25",color: Colors.white,fontFamily: 'persian_number',)
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    Stack(
                      children: [
                        Positioned(
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: Dimensions.height20),
                            child: Column(
                              mainAxisAlignment:
                              MainAxisAlignment.start,
                              crossAxisAlignment:
                              CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "assets/images/tracking_icons/t2.png",
                                  width: 50,
                                ),
                                SizedBox(
                                  height: Dimensions.height10 * .5,
                                ),
                                SmallText(text: "مرجوعی")
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          left: 15,
                          top: 5,
                          child: Container(
                              padding: EdgeInsets.symmetric(horizontal: Dimensions.height10/2,vertical: Dimensions.height10/4),
                              decoration: BoxDecoration(
                                color: AppColors.mainColor,
                                borderRadius: BorderRadius.circular(
                                    Dimensions.radius10/2),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.white12,
                                    blurRadius:0,
                                    offset: Offset(0, 1), // Shadow position
                                  ),
                                ],),
                              child:  SmallText(text:"25",color: Colors.white,fontFamily: 'persian_number',)
                          ),
                        )
                      ],
                    ),
                  ],
                ),

              ],
            ),
          )
        ],
      ),
    );
  }
}
