import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_school_app_july_1/constants/color_constants.dart';
import 'package:flutter_school_app_july_1/constants/controller.dart';
import 'package:flutter_school_app_july_1/constants/text_constants.dart';
import 'package:flutter_school_app_july_1/screens/Sidemenu/profile/profile.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';


class SideMenu extends StatefulWidget {
  const SideMenu({Key key}) : super(key: key);

  @override
  _SideMenuState createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  @override
  Widget build(BuildContext context) {
    return  Container(
        color: Colors.white,
        height: size.height,
        width: size.width * 0.7,
        child: SingleChildScrollView(
          // scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Card(
                color: lightprimarycolor,
                elevation: 10,
                child: ListTile(
                  leading:  CircularProfileAvatar(
                    'https://images.ctfassets.net/p0qf7j048i0q/6UM0DTikFfdNvAu5jym5x9/c7ab7310b07ff8613ec0232135d5d9c9/G1155346217.jpg?w=1000&h=750&fit=fill&fm=webp',
                    cacheImage: true,
                    radius: 25, // sets radius, default 50.0
                    // backgroundColor: Colors.transparent, // sets background color, default Colors.white
                    borderWidth: 5,  ),
                  title: Text('Selvyie',style: TextStyle(color: primarytext,fontSize: size.height * 0.03),),
                  subtitle: Text('Class A (21)'),

                ),
              ),
              Column(
                // scrollDirection: Axis.vertical,
                // shrinkWrap: true,
                children: [
                Card(
                  // color: Colors.transparent,
                  child: InkWell(
                    onTap: (){
                      bottomNavBarController.selectedIndex.value = 0;
                      pageViewController.controller.jumpToPage(0);
                      Get.back();
                    },
                    child: ListTile(
                      leading: Icon(Icons.home),
                      title: Text('Home'),
                    ),
                  ),
                ),
                  Card(
                    // color: Colors.transparent,
                    child: InkWell(
                      onTap: (){

                       Get.to(Profile());
                      },
                      child: ListTile(
                        leading: Icon(Icons.person),
                        title: Text('Profile'),
                      ),
                    ),
                  ),
                  Card(
                    // color: Colors.transparent,
                    child: InkWell(
                      onTap: (){

                        pageViewController.controller.jumpToPage(5);
                        Get.back();
                      },
                      child: ListTile(
                        leading: Icon(Icons.money),
                        title: Text('Fees'),
                      ),
                    ),
                  ),
                  Card(
                    // color: Colors.transparent,
                    child: InkWell(
                      onTap: (){

                        pageViewController.controller.jumpToPage(6);
                        Get.back();
                      },
                      child: ListTile(
                        leading: Icon(Icons.video_call),
                        title: Text('Zoom Live Class'),
                      ),
                    ),
                  ),
                  Card(
                    // color: Colors.transparent,
                    child: InkWell(
                      onTap: (){

                        pageViewController.controller.jumpToPage(7);
                        Get.back();
                      },
                      child: ListTile(
                        leading: Icon(Icons.video_call),
                        title: Text('Google Meet'),
                      ),
                    ),
                  ), Card(
                    // color: Colors.transparent,
                    child: InkWell(
                      onTap: (){

                        pageViewController.controller.jumpToPage(8);
                        Get.back();
                      },
                      child: ListTile(
                        leading: Icon(Icons.calendar_today_sharp),
                        title: Text('Time Table'),
                      ),
                    ),
                  ), Card(
                    // color: Colors.transparent,
                    child: InkWell(
                      child: ListTile(
                        leading: Icon(Icons.list_alt),
                        title: Text('Lesson Plan'),
                      ),
                    ),
                  ), Card(
                    // color: Colors.transparent,
                    child: InkWell(
                      onTap: (){

                        pageViewController.controller.jumpToPage(9);
                        Get.back();
                      },
                      child: ListTile(
                        leading: Icon(Icons.list),
                        title: Text('Syllabus Status'),
                      ),
                    ),
                  ), Card(
                    // color: Colors.transparent,
                    child: InkWell(
                      onTap: (){
                        bottomNavBarController.selectedIndex.value = 1;
                        pageViewController.controller.jumpToPage(1);
                        Get.back();
                      },
                      child: ListTile(
                        leading: Icon(Icons.book),
                        title: Text('Home Work'),
                      ),
                    ),
                  ), Card(
                    // color: Colors.transparent,
                    child: InkWell(
                      onTap: (){

                        pageViewController.controller.jumpToPage(10);
                        Get.back();
                      },
                      child: ListTile(
                        leading: Icon(Icons.wifi),
                        title: Text('Online Exam'),
                      ),
                    ),
                  ),
                  Card(
                    // color: Colors.transparent,
                    child: InkWell(
                      onTap: (){

                        pageViewController.controller.jumpToPage(11);
                        Get.back();
                      },
                      child: ListTile(
                        leading: Icon(Icons.calendar_today_sharp),
                        title: Text('Apply Leave'),
                      ),
                    ),
                  ),
                  Card(
                    // color: Colors.transparent,
                    child: InkWell(
                      onTap: (){

                        pageViewController.controller.jumpToPage(12);
                        Get.back();
                      },
                      child: ListTile(
                        leading: Icon(Icons.download_outlined),
                        title: Text('Download Center'),
                      ),
                    ),
                  ),
                  Card(
                    // color: Colors.transparent,
                    child: InkWell(
                      onTap: (){

                        pageViewController.controller.jumpToPage(13);
                        Get.back();
                      },
                      child: ListTile(
                        leading: Icon(Icons.library_add_check),
                        title: Text('Attendance '),
                      ),
                    ),
                  ),
                  Card(
                    // color: Colors.transparent,
                    child: InkWell(
                      onTap: (){
                        bottomNavBarController.selectedIndex.value = 3;
                        pageViewController.controller.jumpToPage(3);
                        Get.back();
                      },
                      child: ListTile(
                        leading: Icon(Icons.book_online),
                        title: Text('Examination'),
                      ),
                    ),
                  ),
                  Card(
                    // color: Colors.transparent,
                    child: InkWell(
                      onTap: (){
                        bottomNavBarController.selectedIndex.value = 2;
                        pageViewController.controller.jumpToPage(2);
                        Get.back();
                      },
                      child: ListTile(
                        leading: Icon(LineIcons.mailBulk),
                        title: Text('Notice Board'),
                      ),
                    ),
                  ),
                  Card(
                    // color: Colors.transparent,
                    child: InkWell(
                      onTap: (){

                        pageViewController.controller.jumpToPage(14);
                        Get.back();
                      },
                      child: ListTile(
                        leading: Icon(Icons.timeline),
                        title: Text('Time Line'),
                      ),
                    ),
                  ),
                  Card(
                    // color: Colors.transparent,
                    child: InkWell(
                      onTap: (){

                        pageViewController.controller.jumpToPage(15);
                        Get.back();
                      },
                      child: ListTile(
                        leading: Icon(Icons.file_copy),
                        title: Text('My  Documents'),
                      ),
                    ),
                  ),
                  Card(
                    // color: Colors.transparent,
                    child: InkWell(
                      onTap: (){

                        pageViewController.controller.jumpToPage(16);
                        Get.back();
                      },
                      child: ListTile(
                        leading: Icon(Icons.person_pin_sharp),
                        title: Text('Teachers Review'),
                      ),
                    ),
                  ),
                  Card(
                    // color: Colors.transparent,
                    child: InkWell(
                      onTap: (){

                        pageViewController.controller.jumpToPage(17);
                        Get.back();
                      },
                      child: ListTile(
                        leading: Icon(Icons.library_add_check),
                        title: Text('Library '),
                      ),
                    ),
                  ),
                  Card(
                    // color: Colors.transparent,
                    child: InkWell(
                      onTap: (){

                        pageViewController.controller.jumpToPage(18);
                        Get.back();
                      },
                      child: ListTile(
                        leading: Icon(Icons.location_on),
                        title: Text('Transport Route'),
                      ),
                    ),
                  ),
                  Card(
                    // color: Colors.transparent,
                    child: InkWell(
                      onTap: (){

                        pageViewController.controller.jumpToPage(19);
                        Get.back();
                      },
                      child: ListTile(
                        leading: Icon(Icons.home_work),
                        title: Text('Hostels'),
                      ),
                    ),
                  ),
                  Card(
                    // color: Colors.transparent,
                    child: InkWell(
                      onTap: (){

                        pageViewController.controller.jumpToPage(20);
                        Get.back();
                      },
                      child: ListTile(
                        leading: Icon(Icons.error),
                        title: Text('About'),
                      ),
                    ),
                  ),
                  Card(
                    // color: Colors.transparent,
                    child: InkWell(
                      child: ListTile(
                        leading: Icon(Icons.logout),
                        title: Text('Logout'),
                      ),
                    ),
                  ),
                  Center(
                    child: Text('Version : 1.0.0'),
                  )
                ],
              ),
            ],
          ),
        ),
      );
  }
}

