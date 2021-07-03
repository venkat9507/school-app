import 'package:flutter/material.dart';

class Fees extends StatefulWidget {
  const Fees({Key key}) : super(key: key);

  @override
  _FeesState createState() => _FeesState();
}

class _FeesState extends State<Fees> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueAccent,
      height: 300,
      width: 300,
      child: Text('Fees'),
    );
  }
}
