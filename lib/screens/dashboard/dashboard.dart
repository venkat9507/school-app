import 'package:flutter/material.dart';
import 'package:flutter_school_app_july_1/constants/color_constants.dart';
import 'package:flutter_school_app_july_1/constants/controller.dart';
import 'package:flutter_school_app_july_1/constants/text_constants.dart';
import 'package:flutter_school_app_july_1/screens/Sidemenu/Examination/examination.dart';
import 'package:flutter_school_app_july_1/screens/Sidemenu/Side_menu.dart';
import 'package:flutter_school_app_july_1/screens/Sidemenu/about/about.dart';
import 'package:flutter_school_app_july_1/screens/Sidemenu/applyLeave/apply_leave.dart';
import 'package:flutter_school_app_july_1/screens/Sidemenu/attendence/attendence.dart';
import 'package:flutter_school_app_july_1/screens/Sidemenu/downloadCenter/downloadCenter.dart';
import 'package:flutter_school_app_july_1/screens/Sidemenu/fees/fees.dart';
import 'package:flutter_school_app_july_1/screens/Sidemenu/googleMeet/google_meet.dart';
import 'package:flutter_school_app_july_1/screens/Sidemenu/homePage/home_page.dart';
import 'package:flutter_school_app_july_1/screens/Sidemenu/homePage/pendingtask.dart';
import 'package:flutter_school_app_july_1/screens/Sidemenu/homeWork/home_work.dart';
import 'package:flutter_school_app_july_1/screens/Sidemenu/hostels/hostels.dart';
import 'package:flutter_school_app_july_1/screens/Sidemenu/lessonPlan/lesson_plan.dart';
import 'package:flutter_school_app_july_1/screens/Sidemenu/library/library.dart';
import 'package:flutter_school_app_july_1/screens/Sidemenu/myDocuments/my_documents.dart';
import 'package:flutter_school_app_july_1/screens/Sidemenu/notice/notice.dart';
import 'package:flutter_school_app_july_1/screens/Sidemenu/onlineExam/online_exam.dart';
import 'package:flutter_school_app_july_1/screens/Sidemenu/profile/profile.dart';
import 'package:flutter_school_app_july_1/screens/Sidemenu/syllabusStatus/syllabus_status.dart';
import 'package:flutter_school_app_july_1/screens/Sidemenu/teachersReview/teachers_review.dart';
import 'package:flutter_school_app_july_1/screens/Sidemenu/timeTable/time_table.dart';
import 'package:flutter_school_app_july_1/screens/Sidemenu/timeline/timeLine.dart';
import 'package:flutter_school_app_july_1/screens/Sidemenu/transportRoute/transport_route.dart';
import 'package:flutter_school_app_july_1/screens/Sidemenu/zoomLiveClass/zoom_live_class.dart';
import 'package:flutter_school_app_july_1/screens/bottomNavbar/bottomNavbar.dart';
import 'package:flutter_school_app_july_1/services/auth.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key key, this.auth}) : super(key: key);
  final AuthenticationService auth;

  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          // bottomNavigationBar:
          drawer: SideMenu(auth: widget.auth),
          appBar: AppBar(
            automaticallyImplyLeading:true,
            backgroundColor: primary,
            title: Text('School App'),
            actions: [
              IconButton(onPressed:(){}, icon: Icon(Icons.circle_notifications,size: 30,))
            ],
          ),
            body: Container(
              height:  size.height,
              child: Column(
                children: [
                  Expanded(
                    // It takes 5/6 part of the screen
                    flex: 10,
                    child: PageView(
                        scrollDirection: Axis.vertical,
                        physics: NeverScrollableScrollPhysics(),
                        onPageChanged: (value) {
                          pageViewController.pageindex.value = value;
                        },
                        controller: pageViewController.controller,
                        children: [
                         HomePage(),
                          HomeWorkwidget(),
                          Notice(),
                          Examination(),
                          Profile(),
                          Fees(),
                          ZoomLiveClass(),
                          GoogleMeet(),
                          TimeTable(),
                          LessonPlan(),
                          SyllabusStatus(),
                          OnlineExam(),
                          ApplyLeave(),
                          DownloadCenter(),
                          Attendance(),
                          TimeLine(),
                          MyDocuments(),
                          TeachersReview(),
                          Library(),
                          TransportRoute(),
                          Hostels(),
                          About(),
                          PendingTask(),
                        ]),
                  ),
                  Expanded(
                    // flex: 2,
                    child: BottomNavbar(),),
                ],
              ),
            )));
  }
}
