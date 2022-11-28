import 'package:digikala/utils/dimensions.dart';
import 'package:digikala/widgets/big_text.dart';
import 'package:digikala/widgets/small_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserInfo extends StatefulWidget {
  const UserInfo({Key? key}) : super(key: key);

  @override
  State<UserInfo> createState() => _UserInfoState();
}

class _UserInfoState extends State<UserInfo> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            blurRadius: 5,
            offset: const Offset(0, 1), // Shadow position
          )
        ],
      ),
      padding: EdgeInsets.all(Dimensions.height30),
      child: Column(
        children: [
          BigText(
            text: "مهرداد داداشی",
          ),
          SmallText(
            text: "09904421184",
            fontFamily: "persian_number",
          ),
        ],
      ),
    );
  }
}
