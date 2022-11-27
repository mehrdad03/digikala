import 'package:flutter/cupertino.dart';

class SmallText extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  double height;
  FontWeight? fontWeight;
  TextDecoration? textDecoration;
  String?fontFamily;

  SmallText({
    Key? key,
    this.color = const Color(0xff121212),
    required this.text,
    this.size = 12,
    this.height = 1.2,
    this.fontWeight,
    this.fontFamily="iranYekan",
    this.textDecoration//look like line height in css
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontFamily: fontFamily,
          fontSize: size,
          color: color,
          fontWeight: fontWeight,
          decoration: textDecoration),
    );
  }
}
