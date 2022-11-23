import 'dart:convert';
import 'package:firs_app/body.dart';
import 'package:firs_app/camera_page.dart';
import 'package:firs_app/function.dart';
import 'package:flutter/material.dart';

import 'dart:io';

import 'package:webview_flutter/webview_flutter.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String url = '';
  var data;

  @override
  void initState() {
    super.initState();
    // Enable virtual display.
    if (Platform.isAndroid) WebView.platform = AndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flask App')),
      body: Center(
        child: Column(children: [
          TextField(onChanged: (value) {
            url = 'http://127.0.0.1:5000';
          }),
          TextButton(
            onPressed: () async {
              // data = await jsonDecode(fetchdata(url));
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => WebViewExample()),
              );
            },
            child: Text('Camera'),
          ),
          const Text('255'),
        ]),
      ),
    );
  }
}
