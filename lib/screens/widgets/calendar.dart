import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';


class Calendar extends StatefulWidget {
  const Calendar({Key key}) : super(key: key);

  @override
  _CalendarState createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  TextEditingController _controller;




@override
void initState() {
    // TODO: implement initState
    super.initState();
    // _builders=CalendarBuilders();

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              child: TableCalendar(
                firstDay: DateTime.utc(1990),
                lastDay: DateTime.utc(2050),
                focusedDay: DateTime.now(),
                weekendDays: [5],

                calendarStyle: CalendarStyle(
                  selectedDecoration: BoxDecoration(

                  ),
                  weekendDecoration: BoxDecoration(
                 color: Colors.red.withOpacity(0.5),
                    shape: BoxShape.circle
                  ),


                ),
                headerStyle: HeaderStyle(
                  titleTextStyle: TextStyle(
                    color: Colors.white,fontSize: 20,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.deepPurpleAccent,

                  ),
                  headerMargin: EdgeInsets.all(8)
                ),



              ),
            ),
          ],
        ),
      ),
    );
  }
}
