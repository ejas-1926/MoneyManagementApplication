import 'package:flutter/material.dart';
import 'package:noteapplication/views/category/screen_category.dart';
import 'package:noteapplication/views/home/widgets/bottom_navigation.dart';
import 'package:noteapplication/views/transactions/screen_transaction.dart';

class ScreenHome extends StatelessWidget {
  ScreenHome({super.key});
  static ValueNotifier<int> selectedIndexNotifier = ValueNotifier(0);
  final _pages = [ScreenTransaction(), ScreenCategory()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Money Manager"),
        centerTitle: true,
        backgroundColor: Colors.pink,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          if (selectedIndexNotifier.value == 1) {
            print("add category");
          } else if (selectedIndexNotifier.value == 0) {
            print("Add transactions");
          }
        },
      ),
      bottomNavigationBar: BottomNavigationMoneyManagement(),
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: selectedIndexNotifier,
          builder: (context, updatedIndex, child) {
            return _pages[updatedIndex];
          },
        ),
      ),
    );
  }
}
