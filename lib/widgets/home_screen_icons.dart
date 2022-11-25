import 'package:digikala/utils/dimensions.dart';
import 'package:digikala/widgets/small_text.dart';
import 'package:flutter/cupertino.dart';

class HomeScreenIcons extends StatelessWidget {
  const HomeScreenIcons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Image.asset(
                      "assets/images/icons/business.png",
                      width: 50,
                    ),
                    SizedBox(height: Dimensions.height10*.5,),
                    SmallText(text: "خرید عمده")
                  ],
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/icons/jet.png",
                  width: 50,
                ),
                SizedBox(height: Dimensions.height10*.5,),
                SmallText(text: "دیجی کالا جت")
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/icons/offer.png",
                  width: 50,
                ),
                SizedBox(height: Dimensions.height10*.5,),
                SmallText(text: "حراج")
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/icons/ds.png",
                  width: 50,
                ),
                SizedBox(height: Dimensions.height10*.5,),
                SmallText(text: "دیجی استایل")
              ],
            ),
          ],
        ),
        SizedBox(height: Dimensions.height20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/icons/save.png",
                  width: 50,
                ),
                SizedBox(height: Dimensions.height10*.5,),
                SmallText(text: "هدیه نقدی")
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/icons/pay.png",
                  width: 50,
                ),
                SizedBox(height: Dimensions.height10*.5,),
                SmallText(text: "خرید اقساطی")
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/icons/business.png",
                  width: 50,
                ),
                SizedBox(height: Dimensions.height10*.5,),
                SmallText(text: "خرید عمده")
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/icons/football.png",
                  width: 50,
                ),
                SizedBox(height: Dimensions.height10*.5,),
                SmallText(text: "جام جهانی")
              ],
            ),

          ],
        ),
      ],
    );
  }
}
