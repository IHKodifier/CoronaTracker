import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewContainer extends StatefulWidget {
  final String url;
  WebViewContainer(this.url);
  @override
  _WebViewContainerState createState() => _WebViewContainerState(this.url);
}

class _WebViewContainerState extends State<WebViewContainer> {
  final _key = UniqueKey();
  final String _url;
  _WebViewContainerState(this._url);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      width: MediaQuery.of(context).size.width,
      child: WebView(
      key: _key,
      javascriptMode: JavascriptMode.unrestricted,
      initialUrl: _url),
    );
  }
}
