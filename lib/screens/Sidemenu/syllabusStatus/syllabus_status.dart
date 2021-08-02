import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_school_app_july_1/constants/color_constants.dart';
import 'package:flutter_school_app_july_1/screens/Sidemenu/syllabusStatus/Lessontopic.dart';
import 'package:flutter_school_app_july_1/screens/widgets/appbar.dart';
import 'package:flutter_school_app_july_1/screens/widgets/text_widget.dart';
import 'package:get/get.dart';




class SyllabusStatus extends StatefulWidget {
  const SyllabusStatus({Key key}) : super(key: key);

  @override
  _SyllabusStatusState createState() => _SyllabusStatusState();
}

class _SyllabusStatusState extends State<SyllabusStatus> {
  final syllabusstatus = List<String>.generate(5, (i) => 'Product $i');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar('Syllabus Status'),
      // backgroundColor: Colors.black,
      body: ListView.builder(
        itemCount: syllabusstatus.length,
        itemBuilder: (context,index){
          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: Card(
              child: SizedBox(
                height: 80,
                child: ListTile(
                  leading: Image.asset('assets/atom.png'),
                  title: Text('Chemistry'),
                  subtitle: Text('(210)'),
                  trailing: Column(
                    children: [
                      TextWidgetBold('75% Completed'),
                      Flexible(
                        child: ElevatedButton(onPressed: (){
                          Get.to(LessonTopic());
                        }, child: Text('Lesson Topic'),




                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),


    );
  }
}
