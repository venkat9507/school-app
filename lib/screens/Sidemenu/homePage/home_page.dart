import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_school_app_july_1/screens/Sidemenu/homePage/calendar.dart';
import 'package:flutter_school_app_july_1/screens/Sidemenu/homePage/carousel_slider.dart';
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
            Text("Today's Tasks"),
            // Expanded(child: ComplicatedImageDemo(),flex: 1,),
            Expanded(flex: 1,child: Column(
              children: [
                Card(
                  color: Colors.white,
                  child: ListTile(
                    leading:Icon(Icons.library_add_check),
                    title: Text('Attendance'),
                    subtitle: Text('This Month'),
                    trailing: Text('0%'),
                  ),

                ),
                Card(
                  color: Colors.white,
                  child: ListTile(
                    leading:Icon(Icons.library_add_check),
                    title: Text('Attendance'),
                    subtitle: Text('This Month'),
                    trailing: Text('0%'),
                  ),

                ),
                Card(
                  color: Colors.white,
                  child: ListTile(
                    leading:Icon(Icons.library_add_check),
                    title: Text('Attendance'),
                    subtitle: Text('This Month'),
                    trailing: Text('0%'),
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
