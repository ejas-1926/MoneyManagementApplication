import 'package:hive_flutter/hive_flutter.dart';

part 'category_type.g.dart';

@HiveType(typeId: 0)
enum CategoryType {
  @HiveField(0)
  income,

  @HiveField(1)
  expense,
}
