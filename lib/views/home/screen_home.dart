import 'package:flutter/material.dart';
import 'package:noteapplication/views/home/widgets/bottom_navigation.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(bottomNavigationBar: BottomNavigationMoneyManagement());
  }
}
