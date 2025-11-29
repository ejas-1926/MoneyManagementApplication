import 'package:hive_flutter/hive_flutter.dart';
import 'package:noteapplication/models/category/categorymodel.dart';

abstract class CategoryDbFunction {
  Future<List<Categorymodel>> getCategories();
  Future<void> insertCategories(Categorymodel c);
}

class CategoryDb extends CategoryDbFunction {
  String dbname = "CATEGORY_DB";

  @override
  Future<List<Categorymodel>> getCategories() async {
    final categoryDb = await Hive.openBox<Categorymodel>(dbname);
    return categoryDb.values.toList();
  }

  @override
  Future<void> insertCategories(Categorymodel c) async {
    final categoryDb = await Hive.openBox<Categorymodel>(dbname);
    await categoryDb.add(c);
  }
}
