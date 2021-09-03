import 'package:flutter/material.dart';

class ScrollScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final boxDecoration = BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        stops: [
          0.5,
          0.5
        ],
        colors: [
          Color(0xFF79ECCB),
          Color(0xFF30BAD6)
        ]
      )
    );

    return Scaffold(
      body: Container(
        decoration: boxDecoration,
        child: PageView(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          children: [
            Page1(),
            Page2()
          ]
        )
      )
    );
  }
}

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _Background(),
        _MainContent()
      ]
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
        margin: EdgeInsets.only(top: 40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("11°", style: textStyle),
            Text("Wednesday", style: textStyle),
            Expanded(child: Column()),
            Icon(Icons.keyboard_arrow_down, size: 100.0, color: Colors.white70)
          ]
        )
      )
    );
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF30BAD6),
      child: Center(
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: Color(0xFF0098FA),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0)
            )
          ),
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 50.0, vertical: 5.0),
            child: Text(
              "Welcome",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30.0
              ),
            ),
          ),
          onPressed: () {}
        )
      )
    );
  }
}
