import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainSearchBox extends StatefulWidget {
  const MainSearchBox({Key? key}) : super(key: key);

  @override
  State<MainSearchBox> createState() => _MainSearchBoxState();
}

class _MainSearchBoxState extends State<MainSearchBox> {
  @override
  Widget build(BuildContext context) {
    return  Positioned(
        child: Container(
          width: double.maxFinite,
          height: 70,
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
          child: Padding(
            padding:
            const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                children: [
                  Icon(Icons.search),
                  SizedBox(
                    width: 5,
                  ),
                  Text("جستجو در ",
                      style: TextStyle(
                          fontFamily: "iranYekan", color: Colors.grey)),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    width: 70,
                    child: Image.asset("assets/images/logo_fa.png"),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
