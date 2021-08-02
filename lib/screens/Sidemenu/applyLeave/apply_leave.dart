import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_school_app_july_1/constants/color_constants.dart';
import 'package:flutter_school_app_july_1/screens/Sidemenu/applyLeave/leaveform.dart';
import 'package:flutter_school_app_july_1/screens/widgets/appbar.dart';
import 'package:flutter_school_app_july_1/screens/widgets/text_widget.dart';
import 'package:get/get.dart';

class ApplyLeave extends StatefulWidget {
  const ApplyLeave({Key key}) : super(key: key);


  @override
  _ApplyLeaveState createState() => _ApplyLeaveState();
}

class _ApplyLeaveState extends State<ApplyLeave> {

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        child: Icon(Icons.add),
        onPressed: (){
          Get.to(()=>LeaveForm());
        },
      ),
      appBar: appBar('Apply Leave'),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return Column(
              children: [
                SizedBox(
                  height: 70,
                  width: double.infinity,
                  child: Card(
                    color: Colors.grey,

                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(

                        children: [
                         TextWidgetBold('Apply Date-07/08/2021'),
                          SizedBox(
                            width: MediaQuery.of(context).size.width*0.25
                            ,
                          ),
                          IconButton(onPressed: (){
                            Get.to(()=>LeaveForm());

                          }, icon: Icon(Icons.edit),
                          iconSize: 20,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width*0.03,
                          ),
                          IconButton(onPressed: (){}, icon: Icon(Icons.delete),
                          iconSize: 20,
                          )
                        ],
                      ),
                    ),


                  ),

                ),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: Card(
                    color: Colors.white,

                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                        children: [
                          TextWidgetBold('From Date'),
                          Text('03/07/2021'),
                          
                          TextWidgetBold('From Date'),
                          Text('03/07/2021'),
                          SizedBox(
                            height: 150,
                            child: Card(
                              color:Colors.orange,
                              child: Center(child: TextWidgetBold('PENDING')),
                            ),
                          ),





                        ],
                      ),
                    ),


                  ),

                ),


              ],
            );
          }),
    );
  }
}



