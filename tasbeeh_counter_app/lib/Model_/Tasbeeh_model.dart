import 'package:hive/hive.dart';
part 'Tasbeeh_model.g.dart';

@HiveType(typeId: 0)
class TasbeehModel {
  @HiveField(0)
  final String name;

  @HiveField(1)
  final int count;

  TasbeehModel({required this.name, required this.count});
}