import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:infolks/core/api_constant.dart';

class ApiProvider extends ChangeNotifier {
  final Dio _dio;
  ApiProvider(this._dio);
  Future<List<Map<String,dynamic>>> getData() async {
    try {
      Response response = await _dio.get(apiendPoint);
      if (response.statusCode == 200) {
        log('data fetched successfully');
        final List<dynamic> data = [];
        data.addAll(response.data);
        // return response.data;
      } 
    } catch (e) {
      log('Error in fetching data:$e');
    }
    return [];
  }
}
