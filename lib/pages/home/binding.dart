import 'package:eggssistant/pages/home/ctrl.dart';
import 'package:get/get.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeCtrl>(() => HomeCtrl());
  }
}
