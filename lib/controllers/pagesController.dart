import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageViewController extends GetxController {
  static PageViewController instance = Get.find();
  // RxList<UserModel> users = RxList<UserModel>([]);
  RxInt pageindex = 0.obs;
  final PageController controller = PageController(initialPage: 0);


  @override
  onReady() {
    super.onReady();
    // users.bindStream(getAllOrders());
  }


}
