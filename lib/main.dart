import 'package:fl_store/view/home/home_page.dart';
import 'package:fl_store/view/layout.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: 'JosefinSans',
          primarySwatch: Colors.blue,
          accentColor: Layout.Light(),
          textTheme: TextTheme(
              headline6: TextStyle(shadows: [
            BoxShadow(
                spreadRadius: 2,
                blurRadius: 2,
                color: Layout.Dark(.3),
                offset: Offset(1, 2)),
          ]))),
      initialRoute: HomePage.tag,
      routes: {
        HomePage.tag: (context) => HomePage(),
      },
    );
  }
}
