import 'package:flutter/material.dart';

class TwoDrawers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text("2 Drawers"),
        leading: Builder(
          builder: (context){
            return IconButton(
              icon: Icon(Icons.settings),
              onPressed: (){
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
        actions: <Widget>[
          Builder(
            builder: (context){
              return IconButton(
                icon: Icon(Icons.person),
                onPressed: (){
                  Scaffold.of(context).openEndDrawer();
                },
              );
            },
          )
        ],
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.blue,
          child: Center(
            child: Text(
              "Settings",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30
              ),
            ),
          ),
        ),
      ),
      
      endDrawer: Drawer(
        child: Container(
          color: Colors.red,
          child: Center(
            child: Text(
              "Profile",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30
              ),
            ),
          ),
        ),
      ),
    );
  }
}