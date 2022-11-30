import 'package:flutter/cupertino.dart';

class ProductTitle extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  FontWeight? fontWeight;

  ProductTitle({
    Key? key,
    this.color = const Color(0xff121212),
    required this.text,
    this.size = 12,
    this.fontWeight ,
    //look like line height in css
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: TextOverflow.ellipsis,
      maxLines: 2,
      style: TextStyle(
          fontFamily: "iranYekan", fontSize: size, fontWeight: fontWeight,height: 1.7),
    );
  }
}
