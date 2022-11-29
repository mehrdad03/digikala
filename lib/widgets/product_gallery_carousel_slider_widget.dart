import 'package:carousel_slider/carousel_slider.dart';
import 'package:digikala/utils/dimensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProductGalleryCarouselSliderWidget extends StatefulWidget {
  const ProductGalleryCarouselSliderWidget({Key? key}) : super(key: key);

  @override
  State<ProductGalleryCarouselSliderWidget> createState() => _ProductGalleryCarouselSliderWidgetState();
}

class _ProductGalleryCarouselSliderWidgetState extends State<ProductGalleryCarouselSliderWidget> {
  int activeIndex=0;
  final urlImages = [
    'https://dkstatics-public.digikala.com/digikala-products/78148768072784b73431693d936ae1d5eb439606_1653804655.jpg?x-oss-process=image/resize,m_lfit,h_800,w_800/quality,q_90',
    'https://dkstatics-public.digikala.com/digikala-products/bbfae5e7d0e23ce89021cd94878df040fe90fc6b_1653804653.jpg?x-oss-process=image/resize,m_lfit,h_800,w_800/quality,q_90',
    'https://dkstatics-public.digikala.com/digikala-products/73409683bedd334608bd3aff7c048fcddc3094ed_1653804651.jpg?x-oss-process=image/resize,m_lfit,h_800,w_800/quality,q_90',
    'https://dkstatics-public.digikala.com/digikala-products/fa5961b7d2a4efb180d686f6f69dd45381a4d3dd_1649056488.jpg?x-oss-process=image/resize,m_lfit,h_800,w_800/quality,q_90'
  ];

  @override
  Widget build(BuildContext context) {

    return Stack(
      children: [
        Positioned(child: CarouselSlider.builder(
          itemCount: urlImages.length,
          itemBuilder: (BuildContext context, int index, int realIndex) {
            final images = urlImages[index];
            return buildImage(images, index);
          },

          options: CarouselOptions(
              height: Dimensions.height45*5,
              aspectRatio: 16 / 9,
              viewportFraction: 1,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlayInterval: const Duration(seconds: 3),
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              scrollDirection: Axis.horizontal,
              onPageChanged: (index,reason)=>
                  setState(()=>  activeIndex=index)
          ),
        ),
        ),
        Positioned(
            left: Dimensions.width10,
            bottom: Dimensions.height15,
            child: buildIndicator())
      ],
    );
  }

  Widget buildImage(String urlImages, int index) =>
      Container(
        margin: const EdgeInsets.symmetric(horizontal: 5),
        padding:  EdgeInsets.symmetric(vertical: Dimensions.height15),

        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          child: Image.network(urlImages, fit: BoxFit.contain),
        ),
      );

  Widget buildIndicator() =>
      AnimatedSmoothIndicator(activeIndex:activeIndex , count: urlImages.length, effect:ScrollingDotsEffect(
          dotWidth: Dimensions.width10*.8,
          dotHeight: Dimensions.height10*.8,
          dotColor: Colors.black38,
          activeDotColor:  Colors.black

      ),);
}
