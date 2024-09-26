import 'dart:developer';

import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';

void initialization() async {
  // Get.lazyPut<StorageService>(() => StorageService());
  // final UserService userService = Get.put(UserService());
  // if (!userService.isLogged()) {
  //   Get.toNamed(MyRoutes.login);
  // FlutterNativeSplash.remove();
  // }
}

class HomeCtrl extends GetxController {
  @override
  void onInit() {
    super.onInit();
    initialization();
  }

  var count = 0.obs;

  incrementCounter() {
    count++;
  }
}
