import 'package:flutter/material.dart';
import 'package:flutter_school_app_july_1/screens/widgets/appbar.dart';
class PendingTask extends StatefulWidget {
  const PendingTask({Key key}) : super(key: key);

  @override
  _PendingTaskState createState() => _PendingTaskState();
}

class _PendingTaskState extends State<PendingTask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar('Pending Task'),
    );
  }
}
