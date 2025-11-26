import 'package:flutter/material.dart';
import 'package:noteapplication/views/home/screen_home.dart';

void main() {
  runApp(MoneyManagementApplication());
}

class MoneyManagementApplication extends StatelessWidget {
  const MoneyManagementApplication({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: ScreenHome());
  }
}
