import 'package:Corona_Count/myAppDrawer.dart';
import 'package:Corona_Count/webViewContainer.dart';
import 'package:flutter/material.dart';
// import 'corona';

// ;
class AppHome extends StatefulWidget {
  @override
  _AppHomeState createState() => _AppHomeState();
}

class _AppHomeState extends State<AppHome> {
  String _link = 'https://www.worldometers.info/coronavirus/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: Key('123'),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
          elevation: 50,
          child: Icon(Icons.refresh),
          onPressed: () {
            setState(() {});
          }),
      drawer: MyAppDrawer(),
      appBar: AppBar(
        title: Text('Corona Count'),
        centerTitle: true,
      ),
      body: WebViewContainer(_link),
    );
  }
}
