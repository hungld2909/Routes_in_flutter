import 'package:flutter/material.dart';
import 'page2.dart';

class Page1 extends StatelessWidget {
  static const String routeName = "/page1";
  final data;
  Page1({this.data});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Paga 1"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(data ?? "No Data"),
            FlatButton(
              onPressed: (){
                  Navigator.pushNamed(context, Page2.routeName,arguments: "Welcome to Page 2");
              }, 
              child: Text("Go to Page 2"))
          ],
        ),
      ),
    );
  }
}