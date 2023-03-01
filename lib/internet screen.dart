import 'package:flutter/cupertino.dart';

class InternetScreen extends StatefulWidget {
  const InternetScreen({Key? key}) : super(key: key);

  @override
  State<InternetScreen> createState() => _InternetScreenState();
}

class _InternetScreenState extends State<InternetScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(decoration: const BoxDecoration(image: DecorationImage(image: AssetImage("assets/ic_wifi.png"))),);
  }
}
