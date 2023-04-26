import 'package:flutter/material.dart';
import 'package:learn_application/constants.dart';

class DrawerTitle extends StatelessWidget {
  final String catName;
  const DrawerTitle({super.key, required this.catName});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: mainColor,
      child: ListTile(
        leading: Icon(Icons.toc),
        title: Text(
          '${catName}',
          style: TextStyle(
            fontSize: 20,
            color: whiteColor,
          ),
        ),
        onTap: () {
          print('rrr');
        },
        // contentPadding: EdgeInsets.all(10),
        // minVerticalPadding: 12,

        minLeadingWidth: 10,
        iconColor: whiteColor,
        shape: RoundedRectangleBorder(
            side: BorderSide(
              color: whiteColor,
              width: .9,
            ),
            borderRadius: BorderRadius.circular(8)),
      ),
    );
  }
}
