import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeScreen extends StatelessWidget {
  WebViewController? controller;
  final homeUrl = "https://hislogs.com";

  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: Text("Hislogs"),
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () {
                  if (controller == null) {
                    return;
                  }
                  controller!.loadUrl(homeUrl);
                },
                icon: Icon(Icons.home))
          ],
        ),
        body: WebView(
          onWebViewCreated: (WebViewController controller) {
            this.controller = controller;
          },
          initialUrl: 'https://hislogs.com',
          javascriptMode: JavascriptMode.unrestricted,
        ));
  }
}
