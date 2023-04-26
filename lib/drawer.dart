import 'package:flutter/material.dart';
import 'package:learn_application/drawer-title.dart';

class DrawerView extends StatelessWidget {
  List categories = [
    'Sports',
    'Entertainment',
    'Food',
    'Drink',
    'Geography',
    'Location',
    'Travel',
    'Science',
    'History',
    'Art',
    'Literature',
    'People'
  ];
  DrawerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      child: ListView.builder(
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return DrawerTitle(
            catName: categories[index],
          );
        },
      ),
    );
  }
}
