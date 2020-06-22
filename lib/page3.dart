import 'package:flutter/material.dart';


class Page3 extends StatelessWidget {
  static const String routeName = "/page3";
  final data;
  Page3({this.data});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Paga 3"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(data ?? "No Data"),
            FlatButton(
              onPressed: (){}, 
              child: Text("Goto Home"))
          ],
        ),
      ),
    );
  }
}