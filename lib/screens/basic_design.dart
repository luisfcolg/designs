import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Image(image: AssetImage("assets/landscape.jpg")),
          _TitleSection(),
          _ButtonSection(),
          _TextSection()
        ]
      )
    );
  }
}

class _TitleSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(32.0),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(bottom: 8.0),
                  child: Text("Oeschinen Lake Campground", style: TextStyle(fontWeight: FontWeight.bold))
                ),
                Text("Kandersteg, Switzerland", style: TextStyle(color: Colors.grey[500]))
              ]
            )
          ),
          Icon(Icons.star, color: Colors.red[500]),
          Text("41")
        ]
      )
    );
  }
}

class _ButtonSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buttonColumn("CALL", Icons.phone),
        _buttonColumn("ROUTE", Icons.near_me),
        _buttonColumn("SHARE", Icons.share)
      ]
    );
  }

  Widget _buttonColumn(String text, IconData icon) {
    final color = Colors.lightBlue;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: EdgeInsets.only(top: 8.0),
          child: Text(
            text,
            style: TextStyle(
              fontSize: 12.0,
              color: color,
              fontWeight: FontWeight.w400
            )
          )
        )
      ]
    );
  }
}

class _TextSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(32.0),
      child: Text(
        "Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese "
        "Alps. Situated 1,578 meters above sea level, it is one of the "
        "larger Alpine Lakes. A gondola ride from Kandersteg, followed by a "
        "half-hour walk through pastures and pine forest, leads you to the "
        "lake, which warms to 20 degrees Celsius in the summer. Activities "
        "enjoyed here include rowing, and riding the summer toboggan run.'",
        softWrap: true
      )
    );
  }
}
