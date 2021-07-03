import 'package:flutter/material.dart';


class Examination extends StatefulWidget {
  const Examination({Key key}) : super(key: key);

  @override
  _ExaminationState createState() => _ExaminationState();
}

class _ExaminationState extends State<Examination> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      height: 300,
      width: 300,
      child: Text('Examination'),
    );
  }
}
