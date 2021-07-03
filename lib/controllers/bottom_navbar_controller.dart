import 'package:get/get.dart';


class BottomNavBarController extends GetxController {
  static BottomNavBarController instance = Get.find();
  RxInt selectedIndex = 0.obs;
}