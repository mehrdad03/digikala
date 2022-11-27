
import 'package:digikala/utils/dimensions.dart';
import 'package:digikala/widgets/amazing_offer.dart';
import 'package:digikala/widgets/main_search_box.dart';
import 'package:digikala/widgets/home_screen_icons.dart';
import 'package:digikala/widgets/carousel_slider%20_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int endTime = DateTime.now().millisecondsSinceEpoch + 100000000 * 30;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              const MainSearchBox(),
              SizedBox(
                height: Dimensions.height20,
              ),
              Expanded(
                child: ListView(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  children: [
                    const CarouselSliderWidget(),
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: Dimensions.width30,
                          vertical: Dimensions.height20),
                      child: const HomeScreenIcons(),
                    ),
                 const AmazingOffer()
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
