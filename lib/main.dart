import 'package:flutter/material.dart';

import 'package:designs/screens/basic_design.dart';
import 'package:designs/screens/scroll_design.dart';

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
      initialRoute: "scroll-design",
      routes: {
        "basic-design" : (_) => BasicDesignScreen(),
        "scroll-design" : (_) => ScrollScreen()
      },
    );
  }
}
