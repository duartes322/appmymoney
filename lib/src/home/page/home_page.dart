import 'package:app_my_money/src/shared/components/app_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import '../controller/home_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late HomeController homeController;

  bool isLoading = true;

  @override
  void initState(){
    super.initState();
    homeController = HomeController();

    Future.delayed(const Duration(seconds: 3)).then((_) => setState(() {
      isLoading = false;
    })); 
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
    ? const AppLoading()
    : Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Observer(
          builder: (_) {
              return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    'You have pushed the button this many times:',
                  ),
                  Text(
                    '${homeController.counter}',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ],
              ),
            );
          },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: homeController.incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}