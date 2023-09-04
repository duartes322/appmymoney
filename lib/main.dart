import 'package:app_my_money/src/modules/initial/page/initial_page.dart';
import 'package:app_my_money/src/modules/login/page/login_page.dart';
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
      },
    );
  }
}
