import 'package:hive_flutter/adapters.dart';
import 'package:tasbeeh_counter_app/Model_/Tasbeeh_model.dart';

class HiveDatabase {
  static const String tasbeehBoxName = 'tasbeehBox';

  static Future<void> init() async {
    await Hive.initFlutter();
    Hive.registerAdapter(TasbeehModelAdapter());
    await Hive.openBox<TasbeehModel>(tasbeehBoxName);
  }

  static Box<TasbeehModel> getTasbeehBox() {
    return Hive.box<TasbeehModel>(tasbeehBoxName);
  }

  static Future<void> addTasbeeh(TasbeehModel tasbeeh) async {
    final box = getTasbeehBox();
    await box.add(tasbeeh);
  }

  static List<TasbeehModel> getAllTasbeehs() {
    final box = getTasbeehBox();
    return box.values.toList();
  }
}
