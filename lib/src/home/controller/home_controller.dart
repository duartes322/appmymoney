import 'package:mobx/mobx.dart';
part 'home_controller.g.dart';

class HomeController = _HomeController with _$HomeController;

abstract class _HomeController with Store {
  @observable
  int counter = 0;

  @action
  void incrementCounter() {
    counter++;
  }
  
  @action
  void reset() {
    counter = 0;
  }
}