import 'package:flutter/material.dart';
import 'package:flutter_school_app_july_1/constants/color_constants.dart';
import 'package:flutter_school_app_july_1/controllers/bottom_navbar_controller.dart';
import 'package:flutter_school_app_july_1/controllers/pagesController.dart';

import 'package:flutter_school_app_july_1/screens/splash_screen/splash_screen.dart';
import 'package:get/get.dart';

void main() {
  Get.put(PageViewController());
  Get.put(BottomNavBarController());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // darkTheme: ThemeData(brightness: Brightness.dark),
      debugShowCheckedModeBanner: false,
      home:SplashScreen()
    );
  }
}


