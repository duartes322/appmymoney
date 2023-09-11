import 'dart:io';

import 'package:app_my_money/src/shared/storage/app_keys.dart';
import 'package:app_my_money/src/shared/storage/app_secure_storage.dart';
import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';

mixin AppDio {
  static Future<Dio> getConnection({bool isAuth = false}) async {
    final Dio dio = Dio();
    
    final Map<String, String> headers = <String, String>{};

    if (isAuth){
      String? token = await AppSecureStorage.readItem(Appkeys.auth_token);
      headers["Authorization"] = "Bearer $token";
    }

    dio.options = BaseOptions();
    dio.options.receiveTimeout = 30000;
    dio.options.sendTimeout = 15000;
    dio.options.headers = headers;

    (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate = (HttpClient client) {
      client.badCertificateCallback = (X509Certificate cert, String host, int port) {
        return true;
      };
    };

    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          onRequest(options);
          handler.next(options);
        },
        onResponse: onResponse,
        onError: (error, handler) async {
          onError(dio, error, handler);
        }
      )
    );

    return dio;
  }

  static void onRequest(RequestOptions options) {
    options.headers["Accept"] = 'application/json';
    options.headers["Content-Type"] = 'application/json';

    print('--------------| Request log |--------------');
    print(options.uri);
  }

  static void onResponse(Response<dynamic> response, ResponseInterceptorHandler handler) {
    print('--------------| Request log |--------------');
    print(response.data);
    handler.next(response);
  }

  static void onError(Dio dio, DioError error, ErrorInterceptorHandler handler){
    print('--------------| Request log |--------------');
    print(error.response);
    handler.next(error);
  }
}