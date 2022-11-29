import 'package:digikala/utils/dimensions.dart';
import 'package:digikala/widgets/small_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductInteraction extends StatelessWidget {
  const ProductInteraction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          Icons.star,
          color: Colors.yellow.shade700,
        ),
        SizedBox(
          width: Dimensions.width10 / 2,
        ),
        SmallText(
          text: "4.5",
          fontFamily: "persian_number",
          size: Dimensions.font16 * .8,
        ),
        SizedBox(
          width: Dimensions.width10/2,
        ),
        SmallText(
          text: "(1307)",
          fontFamily: "persian_number",
          size: Dimensions.font16 * .8,
          color: Colors.grey,
        ),
        SizedBox(
          width: Dimensions.width10,
        ),
        Container(
          width: 4,
          height: 4,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.grey.shade400,
          ),
        ),
        SizedBox(
          width: Dimensions.width10,
        ),
        SmallText(
            text: "1652",
            fontFamily: "persian_number",
            size: Dimensions.font16 * .8,
            color: Color(
              0xFF19bfd3,
            )),
        SizedBox(
          width: Dimensions.width10 / 2,
        ),
        SmallText(
          text: "دیدگاه",
          fontFamily: "persian_number",
          size: Dimensions.font16 * .8,
          color: Color(0xFF19bfd3),
        ),
        SizedBox(
          width: Dimensions.width10,
        ),
        Container(
          width: 4,
          height: 4,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.grey.shade400,
          ),
        ),
        SizedBox(
          width: Dimensions.width10,
        ),
        SmallText(
            text: "723",
            fontFamily: "persian_number",
            size: Dimensions.font16 * .8,
            color: Color(
              0xFF19bfd3,
            )),
        SizedBox(
          width: Dimensions.width10 / 2,
        ),
        SmallText(
          text: "پرسش",
          fontFamily: "persian_number",
          size: Dimensions.font16 * .8,
          color: Color(0xFF19bfd3),
        ),
      ],
    );
  }
}
