import 'file:///C:/Users/reall/AndroidStudioProjects/fl_store/lib/view/home/home_page.dart';
import 'package:flutter/material.dart';

void main() {runApp(MyApp());}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'JosefinSans',
        primarySwatch: Colors.blue,
      ),
      initialRoute: HomePage.tag,
      routes: {
        HomePage.tag: (context) => HomePage(),
      },
    );
  }
}
