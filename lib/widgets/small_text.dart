import 'package:flutter/cupertino.dart';

class SmallText extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  double height;

  SmallText({
    Key? key,
    this.color = const Color(0xff121212),
    required this.text,
    this.size = 12,
    this.height = 1.2, //look like line height in css
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontFamily: "iranYekan",fontSize: size,color: color),
    );
  }
}
