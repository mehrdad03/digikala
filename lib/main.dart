import 'package:digikala/screens/bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:digikala/helper/dependencies.dart' as dep;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DigiKala',
      theme: ThemeData(
        primarySwatch: Colors.blue,
          scaffoldBackgroundColor:Colors.white
      ),
      home:BottomBar(),
    );
  }
}
