import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';

import 'internet screen.dart';

class InternetConnectionWidget extends StatelessWidget {
  final AsyncSnapshot <ConnectivityResult>snapshot;
  final Widget widget;


  const InternetConnectionWidget(
      {Key? key, required this.widget, required this.snapshot})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (snapshot.connectionState) {
      case ConnectionState.active:
        final state = snapshot.data!;
        switch (state) {
          case ConnectivityResult.none:
            return Container(decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/ic_wifi.png"))),);
          default:
            return widget;
        }


      default:
        return InternetScreen();
    }
  }
}