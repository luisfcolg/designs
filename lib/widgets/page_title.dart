import 'package:flutter/material.dart';

class PageTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 30.0, horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Classify transaction", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 26.0)),
          SizedBox(height: 10.0),
          Text("Classify this transaction into a particular category", style: TextStyle(color: Colors.white, fontSize: 16.0))
        ]
      )
    );
  }
}
