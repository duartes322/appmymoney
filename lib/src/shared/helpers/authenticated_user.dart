import 'package:app_my_money/src/shared/model/user_model.dart';

class AuthenticatedUser {
  static Future<UserModel> getUserData() async {
    UserModel userData = UserModel(
        fullName: "Felipe Duarte de Macedo",
        email: "duartes.main@gmail.com",
        id: "ab73f8e9-1f74-40ad-808c-4d18317047b5");

    return userData;
  }
}