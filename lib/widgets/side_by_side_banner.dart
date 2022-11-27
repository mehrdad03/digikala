import 'package:digikala/utils/dimensions.dart';
import 'package:flutter/cupertino.dart';

class SideBySideBanner extends StatefulWidget {
  const SideBySideBanner({Key? key}) : super(key: key);

  @override
  State<SideBySideBanner> createState() => _SideBySideBannerState();
}

class _SideBySideBannerState extends State<SideBySideBanner> {
  @override
  Widget build(BuildContext context) {
    return    Padding(
      padding:
      EdgeInsets.symmetric(horizontal: Dimensions.width20),
      child: Row(
        children: [
          Container(
            height: Dimensions.height45 * 3,
            width: Dimensions.height45 * 4,
            decoration: BoxDecoration(
              borderRadius:
              BorderRadius.circular(Dimensions.radius20),
              image: const DecorationImage(
                image: ExactAssetImage(
                    'assets/images/banners/b3.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            width: Dimensions.width10 * .8,
          ),
          Container(
            height: Dimensions.height45 * 3,
            width: Dimensions.height45 * 4,
            decoration: BoxDecoration(
              borderRadius:
              BorderRadius.circular(Dimensions.radius20),
              image: const DecorationImage(
                image: ExactAssetImage(
                    'assets/images/banners/b2.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
