import 'package:digikala/utils/dimensions.dart';
import 'package:digikala/widgets/small_text.dart';
import 'package:flutter/material.dart';

class MainSearchBox extends StatelessWidget {
  final IconData iconData;
  final bool filters;

  const MainSearchBox(
      {Key? key, this.iconData = Icons.search, this.filters = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
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
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: Dimensions.width10, vertical: Dimensions.height10),
            child: Container(
              height: Dimensions.height45,
              padding: EdgeInsets.symmetric(horizontal: Dimensions.width10),
              decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(Dimensions.radius10)),
              child: Row(
                children: [
                  Icon(iconData),
                  SizedBox(
                    width: Dimensions.width10,
                  ),
                  const Text("جستجو در ",
                      style: TextStyle(
                          fontFamily: "iranYekan", color: Colors.grey)),
                  SizedBox(
                    width: Dimensions.width10,
                  ),
                  SizedBox(
                    width: Dimensions.width30 * 2.3,
                    child: Image.asset("assets/images/logo_fa.png"),
                  )
                ],
              ),
            ),
          ),
          filters
              ? Padding(
            padding: EdgeInsets.symmetric(
                horizontal: Dimensions.width20),
                child: Container(
margin: EdgeInsets.only(bottom: Dimensions.height10),
                    child: Row(
                      children: [
                        Icon(Icons.filter_list_alt),
                        SmallText(text: "فیلترها",size: Dimensions.font16*.8,)
                      ],
                    ),
                  ),

              )
              : Container()
        ],
      ),
    );
  }
}
