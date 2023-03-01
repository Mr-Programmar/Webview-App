import 'dart:async';
import 'dart:developer';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sweet_fix_mcr/splash%20Screen.dart';


import 'HomeScreen.dart';
import 'internet screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.












  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,


      title: 'Sweet Fix MCR',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home:
          const Splash(),
    );
  }
}

