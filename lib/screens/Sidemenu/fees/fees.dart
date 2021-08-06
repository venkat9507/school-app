import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_school_app_july_1/screens/widgets/appbar.dart';
import 'package:flutter_school_app_july_1/screens/widgets/text_widget.dart';

class Fees extends StatefulWidget {
  const Fees({Key key}) : super(key: key);

  @override
  _FeesState createState() => _FeesState();
}

class _FeesState extends State<Fees> {
  // final homeWork = List<String>.generate(5, (i) => 'Product $i');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar('Fees'),
      body: Column(
        children: [
          Card(
            shadowColor: Colors.grey,



            child: Column(
              children: [
                Ink(
                  color: Colors.deepPurpleAccent,
                  child: ListTile(
                    title: TextWidgetBold('Grand Total'),

                  ),
                ),
                Wrap(
                  alignment: WrapAlignment.start,
                  spacing: 40,
                  direction: Axis.horizontal,
                  children: [
                    Text('Amount'),
                    Text('Discount'),
                    Text('Fine'),
                    Text('Paid'),
                    Text('Balance'),
                  ],
                ),
                Wrap(
                  spacing: 45,
                  direction: Axis.horizontal,
                  children: [
                    Text('1500Rs',style: TextStyle(color: Colors.grey),),
                    Text('0.0Rs',style: TextStyle(color: Colors.grey),),
                    Text('640Rs',style: TextStyle(color: Colors.grey),),
                    Text('3050Rs',style: TextStyle(color: Colors.grey),),
                    Text('2500Rs',style: TextStyle(color: Colors.grey),),
                                      ],
                ),
                Wrap(
                  alignment: WrapAlignment.start,

                  direction: Axis.horizontal,
                  children: [
                    Text('+790',style: TextStyle(color: Colors.red),),

                  ],
                ),


              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 100,
                itemBuilder: (context,index){
                  return Card(
                    
                    clipBehavior: Clip.antiAlias,
                    child:Column(
                      children: [
                        Ink(
                          color:Colors.deepPurpleAccent.withOpacity(0.2),
                          child: ListTile(
                            title: TextWidgetBold('Class 1 General_admission Fees'),
                          ),
                        ),
                      ],
                    ),
                  );

            }),
          ),
        ],
      ),
    );
  }
}




