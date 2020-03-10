import 'dart:async';

import 'package:Corona_Count/myAppDrawer.dart';
import 'package:Corona_Count/webViewContainer.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
// import 'corona';

// ;
class AppHome extends StatefulWidget {
  @override
  _AppHomeState createState() => _AppHomeState();
}

class _AppHomeState extends State<AppHome> {
  String _link = 'https://www.worldometers.info/coronavirus/';
  WebViewController _webViewController;
  WebView _webView;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _webView = WebView(
      initialUrl: _link,
      javascriptMode: JavascriptMode.unrestricted,
      onWebViewCreated: (WebViewController webViewController) {
        _webViewController = webViewController;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // key: Key('123'),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
          elevation: 50,
          child: Icon(Icons.refresh),
          onPressed: () {
            _webViewController.reload();
          }),
      drawer: MyAppDrawer(),
      appBar: AppBar(
        title: Text('Corona Case Count'),
        centerTitle: true,
      ),
      body: WebView(
        initialUrl: _link,
        javascriptMode: JavascriptMode.unrestricted,
        onWebViewCreated: (WebViewController webViewController) {
          _webViewController = webViewController;
        },
      ),
    );
  }
}
