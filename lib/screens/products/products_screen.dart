import 'package:digikala/screens/product/product_items.dart';
import 'package:digikala/utils/colors.dart';
import 'package:digikala/utils/dimensions.dart';
import 'package:digikala/widgets/big_text.dart';
import 'package:digikala/widgets/main_search_box.dart';
import 'package:digikala/widgets/product_title.dart';
import 'package:digikala/widgets/small_text.dart';
import 'package:digit_to_persian_word/digit_to_persian_word.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductsScreen extends StatefulWidget {
  const ProductsScreen({Key? key}) : super(key: key);

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  @override
  Widget build(BuildContext context) {
    return Directionality(textDirection: TextDirection.rtl ,child: Scaffold(
        body: Container(
          child: ListView(
            children: [Column(
              children: [
              MainSearchBox(iconData: Icons.arrow_back,filters: true,),
                SizedBox(height: Dimensions.height15,),
                ProductItems()

              ],
            )],
          ),
        ),
    ));
  }
}
