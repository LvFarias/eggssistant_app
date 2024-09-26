import 'package:get/get.dart';
import 'package:localstorage/localstorage.dart';

class StorageService extends GetxService {
  @override
  void onInit() {
    super.onInit();
    initLocalStorage();
  }

  void setItem(String key, String value) {
    localStorage.setItem(key, value);
  }

  String getItem(String key) {
    return localStorage.getItem(key) ?? '';
  }

  void deleteItem(String key) {
    localStorage.removeItem(key);
  }

  void clear() {
    localStorage.clear();
  }
}
