import 'package:flutter/material.dart';

class ScrollScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _Background(),
          _MainContent()
        ]
      )
    );
  }
}

class _Background extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF30BAD6),
      height: double.infinity,
      alignment: Alignment.topCenter,
      child: Image(image: AssetImage("assets/scroll-1.png"))
    );
  }
}

class _MainContent extends StatelessWidget {
  final textStyle = TextStyle(
    color: Colors.white70,
    fontSize: 45.0,
    fontWeight: FontWeight.bold
  );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(top: 30.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("11°", style: textStyle),
                  Text("Miércoles", style: textStyle),
                ]
              )
            ),
            Expanded(child: Column()),
            Icon(Icons.keyboard_arrow_down, size: 100.0, color: Colors.white70)
          ]
        )
      )
    );
  }
}
