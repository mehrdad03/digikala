import 'package:digikala/utils/dimensions.dart';
import 'package:digikala/widgets/main_search_box.dart';
import 'package:digikala/widgets/carousel_slider%20_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              Container(child: MainSearchBox()),
              SizedBox(
                height: Dimensions.height10,
              ),
              Expanded(
                  child: ListView(
                children: [
                  CarouselSliderWidget(),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
