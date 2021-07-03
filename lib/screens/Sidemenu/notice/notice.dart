import 'package:flutter/material.dart';

class Notice extends StatefulWidget {
  const Notice({Key key}) : super(key: key);

  @override
  _NoticeState createState() => _NoticeState();
}

class _NoticeState extends State<Notice> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepOrange,
      height: 300,
      width: 300,
      child: Text('Notice '),
    );
  }
}
