import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:noteapplication/Enums/category_type.dart';
import 'package:noteapplication/models/category/categorymodel.dart';
import 'package:noteapplication/views/home/screen_home.dart';

String path = "";
Future<void> main() async {
  //await Hive.init();
  if (!Hive.isAdapterRegistered(CategorymodelAdapter().typeId)) {
    Hive.registerAdapter(CategorymodelAdapter());
  }

  if (!Hive.isAdapterRegistered(CategoryTypeAdapter().typeId)) {
    Hive.registerAdapter(CategoryTypeAdapter());
  }
  runApp(MoneyManagementApplication());
}

class MoneyManagementApplication extends StatelessWidget {
  const MoneyManagementApplication({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: ScreenHome());
  }
}
