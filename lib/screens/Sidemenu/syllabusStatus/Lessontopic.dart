import 'package:flutter/material.dart';
import 'package:flutter_school_app_july_1/constants/color_constants.dart';
import 'package:flutter_school_app_july_1/screens/widgets/appbar.dart';
import 'package:get/get.dart';

final lessontopic = List<String>.generate(10, (i) =>
"Item $i",


);

class LessonTopic extends StatefulWidget {
  const LessonTopic({Key key}) : super(key: key);

  @override
  _LessonTopicState createState() => _LessonTopicState();
}

class _LessonTopicState extends State<LessonTopic> {

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: appBar('Lesson Topic'),

      body:ListView.builder(itemCount: lessontopic.length,itemBuilder: (context,index){
       return Card(
         child: Padding(
           padding: const EdgeInsets.all(8.0),
           child: DataTable(
             headingRowColor: MaterialStateColor.resolveWith((states) {return Colors.grey;},),

             dividerThickness: 1,
             columns: const <DataColumn>[
               DataColumn(
                 label: Text(
                   'Lesson 1',
                   style: TextStyle(fontStyle: FontStyle.italic),
                 ),
               ),
               // DataColumn(
               //   label: SizedBox(height: 100,)
               // ),
               DataColumn(
                 label: Text(
                   '100% Completed',
                   style: TextStyle(fontStyle: FontStyle.italic),
                 ),
               ),
             ],
             rows: const <DataRow>[
               DataRow(
                 cells: <DataCell>[
                   DataCell(Text('1.1 lesson')),
                   // DataCell(SizedBox(width:  100)),
                   DataCell(Text('Complete(3/05/2021)')),
                 ],
               ),
               DataRow(
                 cells: <DataCell>[
                   DataCell(Text('1.2 lesson')),
                   // DataCell(SizedBox(width:  100)),
                   DataCell(Text('Complete(3/05/2021)')),
                 ],
               ),
               DataRow(
                 cells: <DataCell>[
                   DataCell(Text('1.2 lesson')),
                   // DataCell(SizedBox(width:  100)),
                   DataCell(Text('Complete(3/05/2021)')),
                 ],
               ),
             ],
           ),
         ),
       ); 
      })










    );
  }
}
// body: Column(
//   children: [
//     Text('Chemistry'),
//     ListView.builder(
//
//         itemCount: lessontopic.length,
//         itemBuilder: (context,index){
//       return Padding(
//         padding: const EdgeInsets.all(10.0),
//         child: Card(
//           child: DataTable(
//             columns: const <DataColumn>[
//               DataColumn(
//                 label: Text(
//                   'Lesson1',
//                   style: TextStyle(fontStyle: FontStyle.italic,fontWeight: FontWeight.w900),
//                 ),
//               ),
//
//               DataColumn(
//                 label: Text(
//                   '75% Completed',
//                   style: TextStyle(fontStyle: FontStyle.italic,fontWeight: FontWeight.w900),
//                 ),
//               ),
//             ],
//             rows: const <DataRow>[
//               DataRow(
//                 cells: <DataCell>[
//                   DataCell(Text('Sarah')),
//
//                   DataCell(Text('Student')),
//                 ],
//               ),
//               DataRow(
//                 cells: <DataCell>[
//                   DataCell(Text('Janine')),
//
//                   DataCell(Text('Professor')),
//                 ],
//               ),
//               DataRow(
//                 cells: <DataCell>[
//                   DataCell(Text('William')),
//
//                   DataCell(Text('Associate Professor')),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       );
//     }),
//   ],
// )

