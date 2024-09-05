import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class HttpsConfig {
  Future<Dio> getDio({
    required Map<String, dynamic> queries,
    String? url,
    Map<String, dynamic>? appendHeader,
  }) async {
    late String moduleBaseUrl;
    if (url == null) {
      moduleBaseUrl = 'https://jsonplaceholder.typicode.com';
    } else {
      moduleBaseUrl = 'https://jsonplaceholder.typicode.com$url';
    }

    Map<String, dynamic>? headerMap = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    };
    BaseOptions baseOptions = BaseOptions(
      baseUrl: moduleBaseUrl,
      queryParameters: queries,
      headers: headerMap,
    );

    Dio dio = Dio(baseOptions);
    dio.interceptors.add(
      InterceptorsWrapper(
        onError: (error, handler) {
          handler.next(error);
        },
      ),
    );

    if (kReleaseMode == false) {
      dio.interceptors.add(
        PrettyDioLogger(
          requestBody: true,
          compact: false,
          logPrint: (msg) {
            log(
              msg.toString(),
              name: 'api_log',
            );
          },
          responseBody: false,
        ),
      );
    }

    return dio;
  }
}
