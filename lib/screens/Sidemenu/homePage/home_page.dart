import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_school_app_july_1/constants/color_constants.dart';
import 'package:flutter_school_app_july_1/constants/controller.dart';
import 'package:flutter_school_app_july_1/screens/Sidemenu/attendence/attendence.dart';
import 'package:flutter_school_app_july_1/screens/Sidemenu/homePage/calendar.dart';
import 'package:flutter_school_app_july_1/screens/Sidemenu/homePage/carousel_slider.dart';
import 'package:flutter_school_app_july_1/screens/Sidemenu/homePage/pendingtask.dart';
import 'package:flutter_school_app_july_1/screens/Sidemenu/homeWork/home_work.dart';
import 'package:flutter_school_app_july_1/screens/bottomNavbar/bottomNavbar.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Text("Today's Tasks",style: TextStyle(
              fontWeight: FontWeight.bold
            ),),
            // Expanded(child: ComplicatedImageDemo(),flex: 1,),
            Expanded(flex: 1,child: Column(
              children: [
                Card(
                  color: Colors.white,
                  child: ListTile(
                    leading:Icon(Icons.library_add_check,color: accentcolor,),
                    title: Text('Attendance'),
                    subtitle: Text('This Month'),
                    trailing: Text('0%'),
                    onTap: (){

                      Get.to(Attendance());

                    },
                  ),

                ),
                Card(
                  color: Colors.white,
                  child: ListTile(
                    leading:Icon(Icons.book,color: accentcolor,),
                    title: Text('Home Work'),
                    subtitle: Text('This Month'),
                    trailing: Text('3'),
                    onTap: (){
                      Get.to(HomeWork());
                    },
                  ),

                ),
                Card(
                  color: Colors.white,
                  child: ListTile(
                    leading:Icon(Icons.list_alt,color: accentcolor,),
                    title: Text('My Pending Task'),
                    subtitle: Text('This Month'),
                    trailing: Text('0'),
                    onTap: (){
                      Get.to( PendingTask());
                    },

                  ),

                ),
                Expanded(child: TableEventsExample(

                )),
                
              ],
            )
            ),





          ],
        ),



      ),
    );
  }
}
