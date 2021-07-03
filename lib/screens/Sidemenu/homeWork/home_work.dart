import 'package:flutter/material.dart';


class HomeWork extends StatefulWidget {
  const HomeWork({Key key}) : super(key: key);

  @override
  _HomeWorkState createState() => _HomeWorkState();
}

class _HomeWorkState extends State<HomeWork> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black26,
      height: 300,
      width: 300,
      child: Text('Home Work'),
    );
  }
}
