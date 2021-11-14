// ignore_for_file: non_constant_identifier_names

import 'package:dio/dio.dart';

class DioHelper {
  static late Dio dio;
  static dio_intial() {
    dio = Dio(BaseOptions(
        receiveDataWhenStatusError: true,
        baseUrl: 'https://jsonplaceholder.typicode.com/'));
  }

  static Future<Response> getdata({required String path}) async {
    return await dio.get(path);
  }
}
