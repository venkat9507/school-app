import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_school_app_july_1/constants/color_constants.dart';
import 'package:flutter_school_app_july_1/constants/text_constants.dart';
import 'package:flutter_school_app_july_1/screens/widgets/appbar.dart';
import 'package:flutter_school_app_july_1/screens/widgets/profile.dart';
import 'package:flutter_school_app_july_1/screens/widgets/text_widget.dart';
import 'package:get/get.dart';


class Profile extends StatefulWidget {
  const Profile({Key key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final List<Tab> tabs = <Tab>[
    Tab(text:'PERSONAL'),
    Tab(text: 'PARENTS'),
    Tab(text: 'OTHER'),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: appBar('Profile'),
        body: Column(
          children: [
            Card(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircularProfileAvatar(
                    'https://images.ctfassets.net/p0qf7j048i0q/6UM0DTikFfdNvAu5jym5x9/c7ab7310b07ff8613ec0232135d5d9c9/G1155346217.jpg?w=1000&h=750&fit=fill&fm=webp',
                    cacheImage: true,
                    radius: 25, // sets radius, default 50.0
                    // backgroundColor: Colors.transparent, // sets background color, default Colors.white
                    borderWidth: 5,  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextWidgetBold('Selvyie'),
                      TextWidgetBold('Class 2 - B'),
                      TextWidgetBold('Adm.No. 18012'),
                      TextWidgetBold('Roll Number 210'),
                    ],
                  )
                ],
              ),
            ),
            TabBar(
              tabs: tabs,
              isScrollable: true,
              labelColor: accentcolor,
              unselectedLabelColor: Colors.grey,
              indicatorPadding:
              EdgeInsets.symmetric(horizontal: 24.0),
            ),
            Expanded(
              child: TabBarView(
                  children: [
               PersonalDetails(),
                ParentWidget(),
                    Other(),
              ]),
            )
          ],
        ),
      ),
    );
  }

}
