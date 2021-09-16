import 'package:flutter/material.dart';
import 'package:flutter_school_app_july_1/constants/color_constants.dart';
import 'package:flutter_school_app_july_1/screens/Sidemenu/homePage/calendar.dart';


class Attendance extends StatefulWidget {
  const Attendance({Key key}) : super(key: key);

  @override
  _AttendanceState createState() => _AttendanceState();
}

class _AttendanceState extends State<Attendance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: darkprimaryColor,
        title: Text('Attendance'),

      ),

      body: Calendar(),
    );
  }
}
