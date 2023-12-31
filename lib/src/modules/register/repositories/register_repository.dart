import 'package:dio/dio.dart';
import 'package:app_my_money/src/http/app_dio.dart';
import 'package:app_my_money/src/modules/register/model/register_data_model.dart';

class RegisterRepository {
  String baseURL = "http://192.168.1.205:3099/user";

  Future<Response<Map<String, dynamic>>> sendRegisterData(
      RegisterDataModel registerData) async {
    final Dio clientHTTP = await AppDio.getConnection(isAuth: true);

    return clientHTTP.post('$baseURL/create', data: registerData.toJson());
  }
}
