import 'package:digikala/utils/dimensions.dart';
import 'package:flutter/cupertino.dart';


class BigText extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  String?fontFamily;
  TextOverflow overflow;
  FontWeight? fontWeight;

  BigText(
      {Key? key,
        this.color = const Color(0xFF332d2b),
        required this.text,
        this.size = 20,
        this.fontFamily="iranYekan",
        this.fontWeight,
        this.overflow = TextOverflow.ellipsis})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1, //show text in just one line
      overflow: overflow,
      style: TextStyle(
          fontSize: size == 0 ? Dimensions.font20 : size,
          fontFamily: fontFamily,
          color: color,
          fontWeight: fontWeight),
    );
  }
}