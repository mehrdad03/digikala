import 'package:digikala/utils/dimensions.dart';
import 'package:flutter/cupertino.dart';

class FullWidthBanner extends StatefulWidget {
  const FullWidthBanner({Key? key}) : super(key: key);

  @override
  State<FullWidthBanner> createState() => _FullWidthBannerState();
}

class _FullWidthBannerState extends State<FullWidthBanner> {
  @override
  Widget build(BuildContext context) {
    return    Padding(
      padding: EdgeInsets.all(Dimensions.height20 * 1.1),
      child: Container(
        height: Dimensions.height45 * 4,
        decoration: BoxDecoration(
          borderRadius:
          BorderRadius.circular(Dimensions.radius20),
          image: const DecorationImage(
            image:
            ExactAssetImage('assets/images/banners/b1.jpg'),
            fit: BoxFit.fitHeight,
          ),
        ),
      ),
    );
  }
}
