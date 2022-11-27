import 'package:digikala/utils/dimensions.dart';
import 'package:flutter/material.dart';

class MainSearchBox extends StatefulWidget {
  const MainSearchBox({Key? key}) : super(key: key);

  @override
  State<MainSearchBox> createState() => _MainSearchBoxState();
}

class _MainSearchBoxState extends State<MainSearchBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: Dimensions.height45*1.5,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            blurRadius: 5,
            offset: const Offset(0, 1), // Shadow position
          ),
        ],
      ),
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: Dimensions.width20, vertical: Dimensions.height10),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: Dimensions.width10),
          decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(Dimensions.radius10)),
          child: Row(
            children: [
              const Icon(Icons.search),
              SizedBox(
                width: Dimensions.width10/2,
              ),
              const Text("جستجو در ",
                  style:
                      TextStyle(fontFamily: "iranYekan", color: Colors.grey)),
              SizedBox(
                width: Dimensions.width10,
              ),
              SizedBox(
                width: Dimensions.width30*2.3,
                child: Image.asset("assets/images/logo_fa.png"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
