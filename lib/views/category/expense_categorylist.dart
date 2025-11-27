import 'package:flutter/material.dart';

class ExpenseCategorylist extends StatelessWidget {
  const ExpenseCategorylist({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return Card(
          elevation: 5,
          child: ListTile(
            leading: Text("Expense"),
            trailing: IconButton(onPressed: () {}, icon: Icon(Icons.delete)),
          ),
        );
      },
      separatorBuilder: (context, index) {
        return SizedBox(height: 5);
      },
      itemCount: 3,
    );
  }
}
