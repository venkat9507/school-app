import 'package:animated_text_kit/animated_text_kit.dart';
// import 'package:firebase/firebase.dart';
import 'package:flutter/material.dart';
import 'package:flutter_school_app_july_1/constants/color_constants.dart';
// import 'package:flutter_school_app_july_1/constants/firebase_constants.dart';
// import 'package:flutter_school_app_july_1/constants/text_constants.dart';
// import 'package:flutter_school_app_july_1/screens/dashboard/dashboard.dart';
import 'package:flutter_school_app_july_1/screens/loginPage/landingpage.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:flutter_school_app_july_1/services/auth.dart';
class SplashScreen extends StatefulWidget {


  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 4),(){
      Get.off(LandingPage(auth : AuthenticationService()));

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
              child: Icon(Icons.school,size: 100,color: bgColor,)
              // Image.asset(
              //   'assets/logo.jpeg',
              //   width: double.infinity,
              // ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
           DefaultTextStyle(
            style: const TextStyle(
            fontSize: 20.0,
              color: Colors.black,
              fontWeight: FontWeight.bold
             ),
            child: AnimatedTextKit(
             animatedTexts: [
             WavyAnimatedText('Welcome'),

               ],
            isRepeatingAnimation: true,
           onTap: () {
            print("Tap Event");
             },
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