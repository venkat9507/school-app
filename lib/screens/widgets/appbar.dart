import 'package:flutter/material.dart';
import 'package:flutter_school_app_july_1/constants/color_constants.dart';
import 'package:get/get.dart';


AppBar appBar(String title) {
  return AppBar(
    // backgroundColor: primary,
    leading: IconButton(icon: Icon(Icons.arrow_back),
        onPressed: (){
          Get.back();
        }),
    title: Text(title,style: TextStyle(color: textcolor),),
  );
}