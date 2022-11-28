import 'package:digikala/utils/dimensions.dart';
import 'package:digikala/widgets/big_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileItems extends StatelessWidget {
  const ProfileItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      color: Colors.white,

      child: Column(
        children: [
          Container(

            padding: EdgeInsets.all(Dimensions.width20),
            child: Container(
              padding: EdgeInsets.only(bottom: Dimensions.height20),
              decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.grey.shade300))
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [Icon(Icons.favorite_border_rounded),
                      SizedBox(width: Dimensions.width15,),
                      BigText(text: "علاقه مندی ها",size: Dimensions.font16/1.2,)],
                  ),
                  Icon(Icons.arrow_forward_ios,color: Colors.grey.shade500,size: Dimensions.height20)

                ],
              ),
            ),
          ),
          Container(

            padding: EdgeInsets.all(Dimensions.width20),
            child: Container(
              padding: EdgeInsets.only(bottom: Dimensions.height20),
              decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.grey.shade300))
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [Icon(Icons.shopping_bag_outlined),
                      SizedBox(width: Dimensions.width15,),
                      BigText(text: "سفارش ها",size: Dimensions.font16/1.2,)],
                  ),
                  Icon(Icons.arrow_forward_ios,color: Colors.grey.shade500,size: Dimensions.height20)

                ],
              ),
            ),
          ),
          Container(

            padding: EdgeInsets.all(Dimensions.width20),
            child: Container(
              padding: EdgeInsets.only(bottom: Dimensions.height20),
              decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.grey.shade300))
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [Icon(Icons.person_outline),
                      SizedBox(width: Dimensions.width15,),
                      BigText(text: "اطلاعات حساب کاربری",size: Dimensions.font16/1.2,)],
                  ),
                  Icon(Icons.arrow_forward_ios,color: Colors.grey.shade500,size: Dimensions.height20,)

                ],
              ),
            ),
          ),
          Container(

            padding: EdgeInsets.all(Dimensions.width20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [Icon(Icons.exit_to_app),
                    SizedBox(width: Dimensions.width15,),
                    BigText(text: "خروج",size: Dimensions.font16/1.2,)],
                ),
                Icon(Icons.arrow_forward_ios,color: Colors.grey.shade500,size: Dimensions.height20)

              ],
            ),
          ),
        ],
      ),
    );
  }
}
