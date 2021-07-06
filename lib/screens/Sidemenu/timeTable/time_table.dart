import 'package:flutter/material.dart';
import 'package:flutter_school_app_july_1/constants/color_constants.dart';
import 'package:flutter_school_app_july_1/screens/widgets/appbar.dart';
import 'package:get/get.dart';


class TimeTable extends StatefulWidget {
  const TimeTable({Key key}) : super(key: key);

  @override
  _TimeTableState createState() => _TimeTableState();
}

class _TimeTableState extends State<TimeTable> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar('Time Table'),
      body: Column(
        children: [

        ],
      ),
    );
  }


}
