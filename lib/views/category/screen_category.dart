import 'package:flutter/material.dart';
import 'package:noteapplication/views/category/expense_categorylist.dart';
import 'package:noteapplication/views/category/income_categorylist.dart';

class ScreenCategory extends StatefulWidget {
  ScreenCategory({super.key});

  @override
  State<ScreenCategory> createState() => _ScreenCategoryState();
}

class _ScreenCategoryState extends State<ScreenCategory>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(
      length: 2,
      vsync: this,
    ); //if you want to describe this then put inside the initstate other wise it wont work. Invalid reference for this error will come.
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 5,
      children: [
        TabBar(
          controller: _tabController,
          tabs: [Tab(text: "INCOME"), Tab(text: "EXPENSE")],
        ),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: [IncomeCategorylist(), ExpenseCategorylist()],
          ),
        ),
      ],
    );
  }
}
