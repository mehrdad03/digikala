import 'package:digikala/utils/dimensions.dart';
import 'package:digikala/widgets/small_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductColors extends StatelessWidget {
  const ProductColors({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: Dimensions.width20/2,vertical: Dimensions.height10/2),
            decoration:BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.height45),
                border: Border.all(color: Colors.grey.shade300 )
            ) ,
            child: Row(
              children: [
                Container(
                  height:Dimensions.height20,
                  width: Dimensions.height20,
                  decoration: BoxDecoration(

                      shape: BoxShape.circle,
                      color: Colors.green
                  ),
                ),
                SizedBox(width: Dimensions.width10/2,),
                SmallText(text: "سبز")
              ],
            ),
          ),
          SizedBox(width: Dimensions.width10,),
          Container(
            padding: EdgeInsets.symmetric(horizontal: Dimensions.width20/2,vertical: Dimensions.height10/2),
            decoration:BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.height45),
                border: Border.all(color: Colors.grey.shade300 )
            ) ,
            child: Row(
              children: [
                Container(
                  height:Dimensions.height20,
                  width: Dimensions.height20,
                  decoration: BoxDecoration(

                      shape: BoxShape.circle,
                      color: Colors.red
                  ),
                ),
                SizedBox(width: Dimensions.width10/2,),
                SmallText(text: "قرمز")
              ],
            ),
          ),
          SizedBox(width: Dimensions.width10,),
          Container(
            padding: EdgeInsets.symmetric(
                horizontal: Dimensions.width20 / 2,
                vertical: Dimensions.height10 / 2),
            decoration: BoxDecoration(
                borderRadius:
                BorderRadius.circular(Dimensions.height45),
                border: Border.all(color: Colors.grey.shade300)),
            child: Row(
              children: [
                Container(
                  height: Dimensions.height20,
                  width: Dimensions.height20,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.blue),
                ),
                SizedBox(
                  width: Dimensions.width10 / 2,
                ),
                SmallText(text: "آبی")
              ],
            ),
          ),
          SizedBox(
            width: Dimensions.width10,
          ),
        ],
      ),
    );
  }
}
