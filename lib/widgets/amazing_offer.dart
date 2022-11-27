import 'package:digikala/utils/colors.dart';
import 'package:digikala/utils/dimensions.dart';
import 'package:digikala/widgets/product_card.dart';
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

  @override
  Widget build(BuildContext context) {
    return Container(

      color: AppColors.mainColor,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),

        child: Container(
          padding: EdgeInsets.all(Dimensions.height20),
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

            ProductCard(),
            ProductCard(),
            ProductCard(),
            ],
          ),
        ),
      ),
    );
  }
}
