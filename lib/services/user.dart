import 'dart:convert';

import 'package:eggssistant/models/user.dart';
import 'package:eggssistant/routes/routes.dart';
import 'package:eggssistant/services/api.dart';
import 'package:eggssistant/services/storage.dart';
import 'package:get/get.dart';

class UserService extends GetxService {
  final ApiService api = Get.find();
  final StorageService storage = Get.find();

  User user = User('', '');

  bool isLogged() {
    getUserData();
    return user.id != '';
  }

  User getUserData() {
    String userStorage = storage.getItem('user');
    if (userStorage.isNotEmpty) {
      dynamic _user = jsonDecode(userStorage);
      user = User(_user.id, _user.name);
    }
    return user;
  }

  Future<User> login(String email, String password) async {
    await api.post('login', {'email': email, 'password': password});
    // MyToast.success('success'.tr, 'loginSuccess'.tr);
    Get.toNamed(MyRoutes.home);
    return user;
  }

  void logout() {
    storage.clear();
    Get.toNamed(MyRoutes.login);
  }
}
