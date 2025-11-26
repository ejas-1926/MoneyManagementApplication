import 'package:flutter/material.dart';
import 'package:noteapplication/views/home/screen_home.dart';

class BottomNavigationMoneyManagement extends StatelessWidget {
  const BottomNavigationMoneyManagement({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: ScreenHome.selectedIndexNotifier,
      builder: (context, updatedIndex, child) {
        return BottomNavigationBar(
          currentIndex: updatedIndex,
          onTap: (index) {
            ScreenHome.selectedIndexNotifier.value = index;
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Transactions",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.category),
              label: "category",
            ),
          ],
        );
      },
    );
  }
}
