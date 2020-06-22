import 'package:Routes_in_flutter/page1.dart';
import 'package:Routes_in_flutter/page2.dart';
import 'package:Routes_in_flutter/page3.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: <String, WidgetBuilder>{
        MyHomePage.routeName: (context) => MyHomePage(
              title: "Home",
            ), //! way 1
        // Page1.routeName: (context) => Page1(), //! way 2
      },
      initialRoute: MyHomePage.routeName,
      onGenerateRoute: (RouteSettings settings) {
        var page;
        String routeName = settings.name;
        switch (routeName) {
          case Page1.routeName:
            page = Page1(
              data: settings.arguments,
            );
            return MaterialPageRoute(builder: (context) => page);
            break;
            case Page2.routeName:
            page = Page2(
              data: settings.arguments,
            );
            return MaterialPageRoute(builder: (context) => page);
            break;
        }
      },
      onUnknownRoute: (RouteSettings settings) {
        var page;
        page = Page3(data: settings.arguments,);
        return MaterialPageRoute(builder: (context) => page);
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  static const String routeName = "/";
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            FlatButton(
                onPressed: () {
                  //! way1
                  // Navigator.push(context, MaterialPageRoute(
                  //   builder: (context) => Page1(
                  //     data: "This is some Data", //Todo: data: giúp truyen du lieu sang man hinhf khac
                  //   )
                  // ));
                  //! way 2
                  Navigator.pushNamed(context, Page1.routeName,
                      arguments: "This is some Data");
                      //todo: nếu mà truyền bằng pushnamed thì phauri sử dụng arguments
                },
                child: Text("Go to Page 1"))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
