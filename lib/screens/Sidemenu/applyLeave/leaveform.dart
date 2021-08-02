import 'package:flutter/material.dart';
import 'package:flutter_school_app_july_1/screens/widgets/appbar.dart';
import 'package:flutter_school_app_july_1/screens/widgets/text_widget.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:intl/intl.dart';
import 'dart:async';
class LeaveForm extends StatefulWidget {
  const LeaveForm({Key key}) : super(key: key);


  @override
  _LeaveFormState createState() => _LeaveFormState();
}

class _LeaveFormState extends State<LeaveForm> {
  var myFormat = DateFormat('d-MM-yyyy');

  DateTime _fromdate;
  DateTime _todate;









  @override
  Widget build(BuildContext context) {






    return Scaffold(
      appBar: appBar('Leave Form'),

body: Column(
  mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: MediaQuery.of(context).size.width*0.1,
              width: MediaQuery.of(context).size.width*0.3,
              child: Card(
                child:Center(child: Text( '${myFormat.format(DateTime.now())}',style: TextStyle(color: Colors.black),)),
                color: Colors.greenAccent,
                 ),
            ),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width*.4,
                  child: ElevatedButton(
                    child:Text(_fromdate==null?'From Date':'${myFormat.format(_fromdate)}',style: TextStyle(color: Colors.black),),
                    style: ElevatedButton.styleFrom(primary: Colors.white),
                    onPressed: (){
                      showDatePicker(context: context, initialDate: DateTime.now(), firstDate: DateTime(2000), lastDate: DateTime(2050),


                      ).then((date){
                        setState(() {
                          _fromdate=date;
                        });
                      });
                    }, ),
                ),SizedBox(
                  width: MediaQuery.of(context).size.width*.4,
                  child: ElevatedButton(
                    child:Text(_todate==null?'To Date':'${myFormat.format(_todate)}',style: TextStyle(color: Colors.black),),
                    style: ElevatedButton.styleFrom(primary: Colors.white),
                    onPressed: (){
                      showDatePicker(context: context, initialDate: DateTime.now(), firstDate: DateTime(2000), lastDate: DateTime(2050),


                      ).then((date){
                        setState(() {
                          _todate=date;
                        });
                      });
                    }, ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                maxLines: 7,
                decoration: InputDecoration(
                  hintText: 'Reason for leave',

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
            ElevatedButton(onPressed: (){}, child: TextWidgetBold('Submit'))



          ],

        ),


    );
  }
}








// Text(_date==null?'From Date':'${myFormat.format(_date)}'),





