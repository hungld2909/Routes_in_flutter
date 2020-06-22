import 'package:Routes_in_flutter/main.dart';
import 'package:flutter/material.dart';
class Page2 extends StatelessWidget {
  static const String routeName = "/page2";
  final data;
  Page2({this.data});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Paga 2"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(data ?? "No Data"),
            FlatButton(
              onPressed: (){
                Navigator.pushNamed(context, MyHomePage.routeName,arguments: "this is some data");
              }, 
              child: Text("Go to Home"))
          ],
        ),
      ),
    );
  }
}