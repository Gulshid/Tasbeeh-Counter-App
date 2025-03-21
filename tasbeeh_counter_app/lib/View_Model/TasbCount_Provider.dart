import 'package:flutter/material.dart';
import 'package:tasbeeh_counter_app/Model_/Tasbeeh_model.dart';
import 'package:tasbeeh_counter_app/Services_/HIve_database.dart';
import 'package:tasbeeh_counter_app/Utils_/Routes/Routes_name.dart';


class TasbcountProvider with ChangeNotifier {
  //Make Provider for Splash Screen
  bool _loading = false;
  bool get loading => _loading;

  //set the laoding
  void set_laoding(bool value) {
    _loading = value;
    notifyListeners();
  }

  //set for splash
  void Splash(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, RoutesName.home);
    });
  }

  //all the function set in...
  void set_SplashLoad(BuildContext context) {
    set_laoding(true);
    Splash(context);
    set_laoding(false);
  }

  //Make Provider for Home Screen
  int _counter = 0;
  int get counter => _counter;

  //set the counter
  void set_counter() {
    _counter++;
    notifyListeners();
  }

  //reset the counting...
  void delete_count() {
    _counter = 0;
    notifyListeners();
  }

  //save the tasbeeh
    Future<void> saveCounter() async {
    final tasbeeh = TasbeehModel(name: 'Counter', count: _counter);
    await HiveDatabase.addTasbeeh(tasbeeh);
  }

  // Load the counter value from Hive
  void loadCounter() {
    final tasbeehs = HiveDatabase.getAllTasbeehs();
    if (tasbeehs.isNotEmpty) {
      _counter = tasbeehs.last.count;
    }
    notifyListeners();
  }
}
