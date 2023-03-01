import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'HomeScreen.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {


  @override
  void initState() {
    super.initState();

    splashfun();
  }

  splashfun() {
    Future.delayed(Duration(seconds: 5), (){
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: ((context) => const Home())), (route) => false);
    });

  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
            image: DecorationImage(image: AssetImage("assets/splash.png")),
            ),

          )),
    );
  }
}
