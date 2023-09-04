import 'package:app_my_money/src/home/page/home_page.dart';
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
      home: const HomePage(title: 'MyMoney'),
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.dark(),
    );
  }
}
