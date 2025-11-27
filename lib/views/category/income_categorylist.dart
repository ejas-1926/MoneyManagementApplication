import 'package:flutter/material.dart';

class IncomeCategorylist extends StatelessWidget {
  const IncomeCategorylist({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return Card(
          elevation: 5,
          child: ListTile(
            leading: Text("Income"),
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
