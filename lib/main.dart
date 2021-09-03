import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:designs/screens/basic_design.dart';
import 'package:designs/screens/home_design.dart';
import 'package:designs/screens/scroll_design.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: Color.fromRGBO(55, 57, 84, 0.8),
    ));
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Material App",
      theme: ThemeData(
        brightness: Brightness.light,
        bottomAppBarColor: Colors.green
      ),
      initialRoute: "home-screen",
      routes: {
        "basic-design" : (_) => BasicDesignScreen(),
        "scroll-design" : (_) => ScrollScreen(),
        "home-screen" : (_) => HomeScreen()
      }
    );
  }
}
