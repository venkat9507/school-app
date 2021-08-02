import 'package:flutter/material.dart';
import 'package:flutter_school_app_july_1/constants/color_constants.dart';
import 'package:flutter_school_app_july_1/constants/controller.dart';
import 'package:flutter_school_app_july_1/screens/Sidemenu/Examination/examination.dart';
import 'package:flutter_school_app_july_1/screens/Sidemenu/homePage/home_page.dart';
import 'package:flutter_school_app_july_1/screens/Sidemenu/homeWork/home_work.dart';
import 'package:flutter_school_app_july_1/screens/Sidemenu/notice/notice.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';



class BottomNavbar extends StatefulWidget {
  @override
  _BottomNavbarState createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  // int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.w600,color: textcolor);
  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    HomeWorkwidget(),
    Notice(),
    Examination(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: Obx(
              ()=> GNav(
                rippleColor: Colors.grey[300],
                hoverColor: Colors.grey[100],
                gap: 8,
                activeColor: Colors.black,
                iconSize: 24,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                duration: Duration(milliseconds: 400),
                tabBackgroundColor: Colors.grey[100],
                color: Colors.black,
                tabs: [
                  GButton(
                    icon: LineIcons.home,
                    text: 'Home',
                    backgroundColor: accentcolor,
                    iconColor: primarytext,
                    textColor: textcolor,
                    iconActiveColor: textcolor,

                  ),
                  GButton(
                    icon: LineIcons.book,
                    text: 'HomeWork',
                    backgroundColor: accentcolor,
                    iconColor: primarytext,
                    textColor: textcolor,
                    iconActiveColor: textcolor,
                  ),
                  // GButton(
                  //   icon: LineIcons.indianRupeeSign,
                  //   text: 'Fees',
                  // ),
                  GButton(
                    icon: LineIcons.mailBulk,
                    text: 'Notice',
                    backgroundColor: accentcolor,
                    iconColor: primarytext,
                    textColor: textcolor,
                    iconActiveColor: textcolor,
                  ),
                  GButton(
                    icon: Icons.book,
                    text: 'Examination',
                    backgroundColor: accentcolor,
                    iconColor: primarytext,
                    textColor: textcolor,
                    iconActiveColor: textcolor,

                  ),
                ],
                selectedIndex: bottomNavBarController.selectedIndex.value,
                onTabChange: (index) {
                  setState(() {
                    bottomNavBarController.selectedIndex.value = index;
                    if(index == 0){
                      pageViewController.controller.jumpToPage(0);
                    }
                    if(index == 1){
                      pageViewController.controller.jumpToPage(1);
                    }
                    if(index == 2){
                      pageViewController.controller.jumpToPage(2);
                    }
                    if(index == 3){
                      pageViewController.controller.jumpToPage(3);
                    }
                    // index == 1 ?? pageViewController.controller.jumpToPage(1);
                    // index == 2 ?? pageViewController.controller.jumpToPage(2);
                    // index == 3 ?? pageViewController.controller.jumpToPage(3);
                    print(index);
                  });
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}