import 'package:digikala/utils/colors.dart';
import 'package:digikala/utils/dimensions.dart';
import 'package:digikala/widgets/big_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';

class ProductAmazingHeader extends StatelessWidget {
  const ProductAmazingHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int endTime = DateTime.now().millisecondsSinceEpoch + 100000000 * 30;
    return   Container(
      padding: EdgeInsets.only(
          left: Dimensions.width20,
          right: Dimensions.width20,
          bottom: Dimensions.height15),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
            bottom: BorderSide(color: AppColors.mainColor),
          )),
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
                  fontSize: Dimensions.font16 * .8,
                  fontFamily: "persian_number",
                  color: AppColors.mainColor,
                  fontWeight: FontWeight.w600,
                ),
              ))
        ],
      ),
    );
  }
}
