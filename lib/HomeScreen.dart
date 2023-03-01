import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:webview_flutter/webview_flutter.dart';

import 'Exit_popup.dart';
import 'internetConnectionWidget.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }


  String url="https://www.sweetfix.co.uk/";
   static late WebViewController _controller;
  Connectivity _connectivity = Connectivity();


  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => showExitPopup(context, _controller),

      child: SafeArea(
          child: Scaffold(
              body: StreamBuilder(
        stream: _connectivity.onConnectivityChanged,
        builder: (context, snapshot) {
          return InternetConnectionWidget(
            snapshot: snapshot,
            widget: WebView(

              onWebViewCreated: (WebViewController webViewController)  {
                _controller = webViewController;



              },
              initialUrl: url,


              javascriptMode: JavascriptMode.unrestricted,
            ),
          );
        },
      ))),
    );
  }
}



