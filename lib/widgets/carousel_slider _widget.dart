import 'package:carousel_slider/carousel_slider.dart';
import 'package:digikala/utils/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CarouselSliderWidget extends StatefulWidget {
  const CarouselSliderWidget({Key? key}) : super(key: key);

  @override
  State<CarouselSliderWidget> createState() => _CarouselSliderWidgetState();
}

class _CarouselSliderWidgetState extends State<CarouselSliderWidget> {
  int activeIndex=0;
  final urlImages = [
    'https://dkstatics-public.digikala.com/digikala-adservice-banners/fddb1f45db28c2e3da013f9063d75283627c7eac_1669123584.gif?x-oss-process=image'
    'https://dkstatics-public.digikala.com/digikala-adservice-banners/dae04ff034ea44b5bf455e9477680db2e1b9f8a5_1668343193.jpg?x-oss-process=image/quality,q_95',
    'https://dkstatics-public.digikala.com/digikala-adservice-banners/5c9ae247082c537c4a4725b5c73369be22ffb7a4_1669141733.jpg?x-oss-process=image/quality,q_95',
    'https://dkstatics-public.digikala.com/digikala-adservice-banners/a33df250b3e1241e2ae58d600ffca85a2c20b231_1669233540.jpg?x-oss-process=image/quality,q_95',
    'https://dkstatics-public.digikala.com/digikala-adservice-banners/b427eba7d5e06b0d46da84d4944f2ed55d4b2ec4_1669146620.jpg?x-oss-process=image/quality,q_95',
    'https://dkstatics-public.digikala.com/digikala-adservice-banners/b86b713a722d33937a700e26117626d4475640d2_1669147163.jpg?x-oss-process=image/quality,q_95'
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
              height: 200,
              aspectRatio: 16 / 9,
              viewportFraction: 0.8,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 3),
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              scrollDirection: Axis.horizontal,
              onPageChanged: (index,reason)=>
                  setState(()=>  activeIndex=index)
          ),
        ),
        ),
        Positioned(
            left: Dimensions.width30*1.8,
            bottom: Dimensions.height15,
            child: buildIndicator())
      ],
    );
  }

  Widget buildImage(String urlImages, int index) =>
      Container(
        margin: const EdgeInsets.symmetric(horizontal: 5),

        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          child: Image.network(urlImages, fit: BoxFit.cover, width: 800),
        ),
      );

  Widget buildIndicator() =>
      AnimatedSmoothIndicator(activeIndex:activeIndex , count: urlImages.length, effect:ScrollingDotsEffect(
        dotWidth: Dimensions.width15,
        dotHeight: Dimensions.height15,
        dotColor: Colors.black38,
          activeDotColor:  Colors.black

      ),);
}
