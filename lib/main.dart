import 'package:flutter/material.dart';
import 'package:Corona_Count/appHome.dart';

void main() => runApp(MyApp(),);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Corona Tracker',
        debugShowCheckedModeBanner: false,
        home: AppHome(),
        theme: ThemeData(
          primarySwatch: Colors.purple,
          textTheme: TextTheme(
              button: TextStyle(color: Colors.white, fontSize: 18.0),
              title: TextStyle(color: Theme.of(context).primaryColor),
              ),
          ),
        );
  }
}
