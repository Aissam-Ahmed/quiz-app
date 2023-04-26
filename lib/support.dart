import 'package:flutter/material.dart';
import 'package:learn_application/constants.dart';

class Support extends StatelessWidget {
  const Support({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: mainColor,
      child: Center(
        child: Text(
          "Contact Us",
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
      ),
    );
  }
}
