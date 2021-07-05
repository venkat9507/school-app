import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_school_app_july_1/constants/color_constants.dart';
import 'package:flutter_school_app_july_1/constants/text_constants.dart';
import 'package:flutter_school_app_july_1/screens/widgets/text_widget.dart';



Row PersonalDetails() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Wrap(
        // runSpacing: 50,
        spacing: 20,
        direction: Axis.vertical,
        children: [
          TextWidgetBold('Admission Date'),
          TextWidgetBold('Date of Birth'),
          TextWidgetBold('Category'),
          TextWidgetBold('Mobile Number'),
          TextWidgetBold('Caste'),
          TextWidgetBold('Religion'),
          TextWidgetBold('Email'),
          TextWidgetBold('Current Address'),
          TextWidgetBold('Permanent Address'),
          TextWidgetBold('Blood Group'),
          TextWidgetBold('Height '),
          TextWidgetBold('Weight '),
          TextWidgetBold('As on Date '),
          TextWidgetBold('Medical History '),
        ],
      ),
      Wrap(
        // runSpacing: 50,
        spacing: 20,
        direction: Axis.vertical,
        children: [
          TextWidgetBold('03/22/2021 '),
          TextWidgetBold('06/03/2016'),
          TextWidgetBold('None'),
          TextWidgetBold('9876543210'),
          TextWidgetBold('None'),
          TextWidgetBold('None'),
          TextWidgetBold('selvyie@gmail.com'),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
                width: size.width * 0.4,
                child: TextWidgetBold('97G/4C/1,1st Floor PSS Jayam Towers, Palai Main Road, Teachers Colony, Thoothukudi, Tamil Nadu 628008',)),
          ),
          Container(
              width: size.width * 0.4,
              child: TextWidgetBold('97G/4C/1,1st Floor PSS Jayam Towers, Palai Main Road, Teachers Colony, Thoothukudi, Tamil Nadu 628008',)),
          TextWidgetBold('B+'),
          TextWidgetBold('5.0 '),
          TextWidgetBold('42kg '),
          TextWidgetBold('03/22/2021 '),
          TextWidgetBold('Allergies & Asthma '),
        ],
      )
    ],
  );
}






SingleChildScrollView ParentWidget() {
  return SingleChildScrollView(
    scrollDirection: Axis.vertical,
    child: Column(
      children: [
        Row(
          children: [
            Expanded(
              flex:2,
              child: Column(
                children: [
                  CircularProfileAvatar(
                    'https://media.istockphoto.com/photos/smiling-man-outdoors-in-the-city-picture-id1179420343?k=6&m=1179420343&s=612x612&w=0&h=y7GrwxrbixTWvJfaeiu55rWXMGYr6oP583uzJJ4-Kis=',
                    cacheImage: true,
                    radius: 50, // sets radius, default 50.0
                    // backgroundColor: Colors.transparent, // sets background color, default Colors.white
                    borderWidth: 5,  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextWidgetBold('Father'),
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: Column(
                children: [
                  ListTile(
                      leading: Icon(Icons.person,),
                      title: TextWidgetBold('Oliver Thomas')
                  ),
                  ListTile(
                      leading: Icon(Icons.phone,),
                      title: TextWidgetBold('9876543210')
                  ),
                  ListTile(
                      leading: Icon(Icons.person,),
                      title: TextWidgetBold('Lawyer')
                  ),
                ],
              ),
            ),
          ],
        ),
        Divider(color: dividerclr,thickness: 2,),
        Row(
          children: [
            Expanded(
              flex:2,
              child: Column(
                children: [
                  CircularProfileAvatar(
                    'https://static.toiimg.com/photo/72957218.cms',
                    cacheImage: true,
                    radius: 50, // sets radius, default 50.0
                    // backgroundColor: Colors.transparent, // sets background color, default Colors.white
                    borderWidth: 5,  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextWidgetBold('Mother'),
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: Column(
                children: [
                  ListTile(
                      leading: Icon(Icons.person,),
                      title: TextWidgetBold('Caroline Thomas')
                  ),
                  ListTile(
                      leading: Icon(Icons.phone,),
                      title: TextWidgetBold('9876543210')
                  ),
                  ListTile(
                      leading: Icon(Icons.person,),
                      title: TextWidgetBold('Teacher')
                  ),
                ],
              ),
            ),
          ],
        ),
        Divider(color: dividerclr,thickness: 2,),
        Row(
          children: [
            Expanded(
              flex:2,
              child: Column(
                children: [
                  CircularProfileAvatar(
                    'https://media.istockphoto.com/photos/smiling-man-outdoors-in-the-city-picture-id1179420343?k=6&m=1179420343&s=612x612&w=0&h=y7GrwxrbixTWvJfaeiu55rWXMGYr6oP583uzJJ4-Kis=',
                    cacheImage: true,
                    radius: 60, // sets radius, default 50.0
                    // backgroundColor: Colors.transparent, // sets background color, default Colors.white
                    borderWidth: 5,  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextWidgetBold('Father'),
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: Column(
                children: [
                  ListTile(
                      leading: Icon(Icons.person,),
                      title: TextWidgetBold('Oliver Thomas')
                  ),
                  ListTile(
                      leading: Icon(Icons.phone,),
                      title: TextWidgetBold('9876543210')
                  ),
                  ListTile(
                      leading: Icon(Icons.person,),
                      title: TextWidgetBold('Lawyer')
                  ),
                  ListTile(
                      leading: Icon(Icons.people,),
                      title: TextWidgetBold('Father')
                  ),
                  ListTile(
                      leading: Icon(Icons.email,),
                      title: TextWidgetBold('oliver@gmail.com')
                  ),
                  ListTile(
                      leading: Icon(Icons.location_on,),
                      title: TextWidgetBold('West Brooklyn')
                  ),
                ],
              ),
            ),
          ],
        ),
        Divider(color: dividerclr,thickness: 2,),
      ],
    ),
  );
}



Row Other() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Wrap(
        // runSpacing: 50,
        spacing: 50,
        direction: Axis.vertical,
        children: [
          TextWidgetBold('Previous School Name '),
          TextWidgetBold('Vehicle Route'),
          TextWidgetBold('Vehicle No'),
          TextWidgetBold('Driver Name'),
          TextWidgetBold('Driver Contact'),
          TextWidgetBold('Hostels'),
          TextWidgetBold('Room No '),
          TextWidgetBold('Room Type'),
        ],
      ),
      Wrap(
        // runSpacing: 50,
        spacing: 50,
        direction: Axis.vertical,
        children: [
          TextWidgetBold(' ABCD School Name'),
          TextWidgetBold('Near to Mosque'),
          TextWidgetBold('AJ 1234'),
          TextWidgetBold('John'),
          TextWidgetBold('9876543210'),
          TextWidgetBold('None'),
          TextWidgetBold('None'),
          TextWidgetBold('None'),
        ],
      )
    ],
  );
}


