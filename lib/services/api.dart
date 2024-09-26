import 'dart:convert';

import 'package:eggssistant/routes/routes.dart';
import 'package:eggssistant/services/storage.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class ApiService extends GetxService {
  final StorageService storage = Get.find();

  Map<String, String> headers = {};
  bool isFullResponse = false;
  String apiUrl = 'https://whims-music-api.herokuapp.com/';

  @override
  void onInit() {
    super.onInit();
    getToken();
  }

  void getToken() {
    String token = storage.getItem('token');
    if (token != '') {
      String authorization = 'Bearer ${token.toString()}';
      headers['Authorization'] = authorization;
    }
  }

  void errorHandler(Map<String, dynamic> body) {
    if (body['status'] == 401) {
      Get.toNamed(MyRoutes.login);
    } else {
      // MyToast.error('error'.tr, body['message'].tr);
    }
  }

  dynamic responseHandler(dynamic response) {
    Map<String, dynamic> body =
        response.body.isNull ? {} : jsonDecode(response.body);
    body['status'] = response.statusCode;

    if (response.statusCode != 200) {
      errorHandler(body);
      throw Exception(body['message']);
    }
    return body;
  }

  Future<Map<String, dynamic>> get(
      String url, Map<String, String>? params) async {
    Uri uri = Uri.parse(apiUrl + url);
    final http.Response response = await http.get(uri, headers: headers);
    return responseHandler(response);
  }

  Future<Map<String, dynamic>> post(
      String url, Map<String, String>? body) async {
    Uri uri = Uri.parse(apiUrl + url);
    final http.Response response =
        await http.post(uri, body: body, headers: headers);
    return responseHandler(response);
  }

  Future<Map<String, dynamic>> put(
      String url, Map<String, String>? body) async {
    Uri uri = Uri.parse(apiUrl + url);
    final http.Response response =
        await http.put(uri, body: body, headers: headers);
    return responseHandler(response);
  }

  Future<Map<String, dynamic>> delete(
      String url, Map<String, String>? body) async {
    Uri uri = Uri.parse(apiUrl + url);
    final http.Response response = await http.delete(uri, headers: headers);
    return responseHandler(response);
  }
}
