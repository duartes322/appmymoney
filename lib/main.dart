import 'package:app_my_money/src/modules/home/home_page.dart';
import 'package:app_my_money/src/modules/initial/page/initial_page.dart';
import 'package:app_my_money/src/modules/login/page/login_page.dart';
import 'package:app_my_money/src/modules/personal_register/page/personal_register.dart';
import 'package:app_my_money/src/modules/register/page/register_page.dart';
import 'package:app_my_money/src/router/app_router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyMoney',
      theme: ThemeData(
        primarySwatch: Colors.green,
        useMaterial3: true,
      ),
      home: const InitialPage(),
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.dark(),
      routes: {
        AppRouter.login: (context) => const LoginPage(),
        AppRouter.register: (context) => const RegisterPage(),
        AppRouter.personalRegister: (context) => const PersonalRegisterPage(),
        AppRouter.home: (context) => const HomePage(),
      },
    );
  }
}
