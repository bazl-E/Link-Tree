import 'package:flutter/material.dart';

import './home.dart';

void main() => runApp(MyPersonalWeb());

class MyPersonalWeb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BaziDev',
      home: MyHome(),
    );
  }
}
