import 'package:flutter/material.dart';

import 'package:designs/screens/basic_design.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Material App",
      theme: ThemeData(
        brightness: Brightness.light
      ),
      initialRoute: "basic-design",
      routes: {
        "basic-design" : (_) => BasicDesignScreen()
      },
    );
  }
}
