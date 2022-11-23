import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 2;
  static final List<Widget> _pagesList = <Widget>[
    Text(
      'home',
    ),
    Text(
      'categories',
    ),
    Text(
      'cart',
    ),
    Text(
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
          selectedLabelStyle: TextStyle(
            fontFamily: "iranYekan",
          ), unselectedLabelStyle: TextStyle(
            fontFamily: "iranYekan"
          ),
          elevation: 20,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.blueGrey,
          unselectedItemColor: Color(0xFF526480),
        ),
      ),
    );
  }
}
