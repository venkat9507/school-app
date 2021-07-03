import 'package:flutter/material.dart';


class Profile extends StatefulWidget {
  const Profile({Key key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      height: 300,
      width: 300,
      child: Text('Profile'),
    );
  }
}
