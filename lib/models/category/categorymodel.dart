import 'package:hive_flutter/hive_flutter.dart';
import 'package:noteapplication/Enums/category_type.dart';
part 'categorymodel.g.dart';

@HiveType(typeId: 1)
class Categorymodel {
  @HiveField(0)
  final String name;

  @HiveField(1)
  final String id;

  @HiveField(2)
  final bool isDisp;

  @HiveField(3)
  final CategoryType type;
  Categorymodel({
    required this.name,
    required this.id,
    this.isDisp = false,
    required this.type,
  });
}
