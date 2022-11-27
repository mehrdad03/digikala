import 'package:digikala/utils/dimensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Brands extends StatelessWidget {
  const Brands({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: BouncingScrollPhysics(),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.only(left: Dimensions.width15),
            decoration: BoxDecoration(
                border: Border(
                    left: BorderSide(color: Colors.grey.shade300)
                )
            ),
            child: Image.asset(
              "assets/images/brands/br1.png",
              width: Dimensions.width30 * 2,),
          ),

          Container(
            padding: EdgeInsets.symmetric(horizontal: Dimensions.width15),
            decoration: BoxDecoration(
                border: Border(
                    left: BorderSide(color: Colors.grey.shade300)
                )
            ),
            child: Image.asset(
              "assets/images/brands/br2.png",
              width: Dimensions.width30 * 2,),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: Dimensions.width15),
            decoration: BoxDecoration(
                border: Border(
                    left: BorderSide(color: Colors.grey.shade300)
                )
            ),
            child: Image.asset(
              "assets/images/brands/br3.png",
              width: Dimensions.width30 * 2,),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: Dimensions.width15),
            decoration: BoxDecoration(
                border: Border(
                    left: BorderSide(color: Colors.grey.shade300)
                )
            ),
            child: Image.asset(
              "assets/images/brands/br4.png",
              width: Dimensions.width30 * 2,),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: Dimensions.width15),
            decoration: BoxDecoration(
                border: Border(
                    left: BorderSide(color: Colors.grey.shade300)
                )
            ),
            child: Image.asset(
              "assets/images/brands/br5.png",
              width: Dimensions.width30 * 2,),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: Dimensions.width15),
            decoration: BoxDecoration(
                border: Border(
                    left: BorderSide(color: Colors.grey.shade300)
                )
            ),
            child: Image.asset(
              "assets/images/brands/br6.jpg",
              width: Dimensions.width30 * 2,),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: Dimensions.width15,vertical:Dimensions.height45),
            decoration: BoxDecoration(
                border: Border(
                    left: BorderSide(color: Colors.grey.shade300)
                )
            ),
            child: Image.asset(
              "assets/images/brands/br7.png",
              width: Dimensions.width30 * 2,),
          ),
        ],),
    );
  }
}
