import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_school_app_july_1/constants/color_constants.dart';
import 'package:flutter_school_app_july_1/screens/widgets/appbar.dart';
import 'package:flutter_school_app_july_1/screens/widgets/text_widget.dart';


class HomeWork extends StatefulWidget {

  const HomeWork({Key key}) : super(key: key);

  @override
  _HomeWorkState createState() => _HomeWorkState();
}

class _HomeWorkState extends State<HomeWork> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: appBar('Home Work'),
        body: HomeWorkwidget());
  }
}

class HomeWorkwidget extends StatefulWidget {
  const HomeWorkwidget({
    Key key,

  }) : super(key: key);

  @override
  _HomeWorkwidgetState createState() => _HomeWorkwidgetState();
}

class _HomeWorkwidgetState extends State<HomeWorkwidget> {
  @override
  Widget build(BuildContext context) {
    final homeWork = List<String>.generate(5, (i) => 'Product $i');
    return Scaffold(

      body: ListView.builder(
        itemCount: homeWork.length,
        itemBuilder: (context,index){
          return Card(
            child: Column(
              children: [
                Card(
                  color: lightprimarycolor,
                  child: ListTile(
                    leading: TextWidgetBold('Mathematics'),

                    trailing:Container(
                      width:300,
                      height: 200,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(onPressed: (){}, icon: Icon(Icons.upload)),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: accentcolor
                            ),
                            onPressed: (){}, child: Row(
                            children: [
                              Icon(Icons.download_rounded),
                              Text('View')

                            ],
                          ),
                          ),


                        ],
                      ),
                    )
                    ),
                ),
                Container(
                  height: 200,
                  width: 400,
                  child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                     Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                       children: [
                         TextWidgetBold('Class 2 B'),
                         SizedBox(width: 100,),
                         SizedBox(
                           height: 30,
                           width: 100,
                           child: Card(

                             color: Colors.green,
                             child: Center(child: Text('Completed')),
                           ),
                         )
                       ],
                     ),
                      Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Wrap(direction: Axis.vertical,
                            spacing: 10,
                            children: [
                              Text('Homework Date',),
                              Text('Submission Date',),
                              Text('Evaluation Date',),





                            ],
                          ),
                          Wrap(
                          direction: Axis.vertical,
                            spacing: 10,
                            children: [

                              Text('05/03/2021',),
                              Text('03/03/2021',),
                              Text('03/03/2021',),



                            ],
                          ),
                          Wrap(
                            direction:Axis.vertical,
                            spacing: 10,
                            children: [


                              Text('Created By Joe',),
                              Text('Evaluated By Joe',),
                              SizedBox(width: 90,),




                            ],
                          ),
                        ],
                      )

                    ],
                  ),

                ),



              ],
            ),
          );
        },
      ),
    );
  }
}
