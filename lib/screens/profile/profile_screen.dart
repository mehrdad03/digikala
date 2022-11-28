import 'package:digikala/screens/profile/profile_items.dart';
import 'package:digikala/screens/profile/tracking.dart';
import 'package:digikala/screens/profile/user_info.dart';
import 'package:digikala/utils/colors.dart';
import 'package:digikala/utils/dimensions.dart';
import 'package:digikala/widgets/big_text.dart';
import 'package:digikala/widgets/small_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.grey.shade200,
          body: ListView(
            children: [
             UserInfo(),
              SizedBox(
                height: Dimensions.height10,
              ),
              Tracking(),
              SizedBox(
                height: Dimensions.height10,
              ),
             ProfileItems(),

            ],
          ),
        ),
      ),
    );
  }
}
