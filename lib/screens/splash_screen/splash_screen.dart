import 'package:flutter/material.dart';
import 'package:flutter_school_app_july_1/constants/color_constants.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
class SplashScreen extends StatefulWidget {


  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3),(){
      Get.toNamed('dashBoardDetails');
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(

            decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(16)),  color: Colors.black,),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                'images/wel.png',
                width: 120,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Loading()
        ],
      ),
    );
  }
}


class Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: SpinKitFadingCircle(
          color: primary,
          size: 30,
        ));
  }
}