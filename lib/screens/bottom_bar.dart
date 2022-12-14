import 'package:digikala/screens/home/home_screen.dart';
import 'package:digikala/screens/product/product_screen.dart';
import 'package:digikala/screens/products/products_screen.dart';
import 'package:digikala/screens/profile/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:digikala/utils/dimensions.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 2;
  static final List<Widget> _pagesList = <Widget>[
   const HomeScreen(),
   const ProductScreen(),
    ProductsScreen(),
    const Text(
      'profile',
    ),
  ];

  void _onItemTapped(int index){
    setState(() {
      _selectedIndex=index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: Center(
          child: _pagesList[_selectedIndex],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: const [
            BottomNavigationBarItem(
                label: "خانه",
                icon: Icon(Icons.home_outlined),
                activeIcon: Icon(Icons.home_rounded)),
            BottomNavigationBarItem(
                label: "سبد خرید",
                icon: Icon(Icons.shopping_cart_outlined),
                activeIcon: Icon(Icons.shopping_cart_rounded)),
            BottomNavigationBarItem(
                label: "دسته بندی",
                icon: Icon(Icons.category_outlined),
                activeIcon: Icon(Icons.category_rounded)),
            BottomNavigationBarItem(
                label: "دیجی کالای من",
                icon: Icon(Icons.person_outline),
                activeIcon: Icon(Icons.person_rounded)),
          ],
          selectedLabelStyle:  TextStyle(
            fontFamily: "iranYekan",
            fontSize: Dimensions.font16*.8,
          ), unselectedLabelStyle:  TextStyle(
            fontFamily: "iranYekan",
          fontSize: Dimensions.font16*.8,
          ),
          elevation: 20,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: const Color(0xFF0C0C0C),
          unselectedItemColor:  Colors.grey.shade500,
        ),
      ),
    );
  }
}
