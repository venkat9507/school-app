import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'color_constants.dart';

final Size size = MediaQuery.of(Get.context).size;
final orientation = MediaQuery.of(Get.context).orientation;
TextStyle headerStyle = TextStyle(fontStyle: FontStyle.normal,color: primaryColor,fontSize: size.width * 0.02);
TextStyle subtitleStyle = TextStyle(fontStyle: FontStyle.normal,color: Colors.black,fontSize: size.width * 0.03,fontWeight: FontWeight.bold);