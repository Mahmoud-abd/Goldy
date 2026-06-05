import 'package:flutter/material.dart';

import 'package:dio/dio.dart';
import 'app_constants.dart';

class DioHalper {
  static late Dio dio;

  static int(){
    dio = Dio(
      BaseOptions(
        baseUrl: AppConstants.baseurl,
        receiveDataWhenStatusError: true,// if server return error (400,500) ? return data with error
        connectTimeout: const Duration(seconds: 20),
        receiveTimeout: const Duration(seconds: 20),
        headers: {'content-type':'application/json'},
      )
    );
  }

  static Future<Response> getData({
    required String endPoint,
    Map<String,dynamic>? queryParamters,
})async{
    final res= await dio.get(endPoint,queryParameters: queryParamters);
    return res;

  }



}