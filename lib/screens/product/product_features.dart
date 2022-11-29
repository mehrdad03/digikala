import 'package:digikala/utils/dimensions.dart';
import 'package:digikala/widgets/big_text.dart';
import 'package:digikala/widgets/small_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductFeatures extends StatelessWidget {
  const ProductFeatures({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: Dimensions.width20),
      margin: EdgeInsets.only(top: Dimensions.height10),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            blurRadius: 10,
            offset: const Offset(0, 10), // Shadow position
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BigText(text: "مشخصات فنی"),
          Container(
            padding: EdgeInsets.symmetric(vertical: Dimensions.height10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Container(
                  width:Dimensions.width30*4,
                  child: SmallText(
                    text: "ابعاد: ",
                    color: Color(0xFF81858b),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(bottom: Dimensions.height10*.8),
                    decoration: BoxDecoration(
                      border:Border(bottom: BorderSide(color: Colors.grey.shade300))


                    ),
                    child: SmallText(
                      text: "158.9*73.6",
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: Dimensions.height10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Container(
                  width:Dimensions.width30*4,
                  child: SmallText(
                    text: "وزن",
                    color: Color(0xFF81858b),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(bottom: Dimensions.height10*.8),
                    decoration: BoxDecoration(
                        border:Border(bottom: BorderSide(color: Colors.grey.shade300))


                    ),
                    child: SmallText(
                      text: "184 گرم",
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: Dimensions.height10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Container(
                  width:Dimensions.width30*4,
                  child: SmallText(
                    text: "فناوری صفحه نمایش : ",
                    color: Color(0xFF81858b),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(bottom: Dimensions.height10*.8),
                    decoration: BoxDecoration(
                        border:Border(bottom: BorderSide(color: Colors.grey.shade300))


                    ),
                    child: SmallText(
                      text: "Amoled Super",
                      fontWeight: FontWeight.bold,
                    ),
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
