import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Table(
        children: [
          TableRow(
            children: [
              _SingleCard(
                icon: Icons.grid_view,
                firstColor: Color(0xFF94D4FF),
                secondColor: Color(0xFF249CF4),
                text: "General"
              ),
              _SingleCard(
                icon: Icons.directions_bus,
                firstColor: Color(0xFFB292FE),
                secondColor: Color(0xFF7A50FF),
                text: "Transport"
              )
            ]
          ),
          TableRow(
            children: [
              _SingleCard(
                icon: Icons.shopping_bag,
                firstColor: Color(0xFFFE93EC),
                secondColor: Color(0xFFF942D9),
                text: "Shopping"
              ),
              _SingleCard(
                icon: Icons.sticky_note_2,
                firstColor: Color(0xFFFEC998),
                secondColor: Color(0xFFF68A4A),
                text: "Bills"
              )
            ]
          ),
          TableRow(
            children: [
              _SingleCard(
                icon: Icons.movie_creation,
                firstColor: Color(0xFF84A7F3),
                secondColor: Color(0xFF4C73FF),
                text: "Entertainment"
              ),
              _SingleCard(
                icon: Icons.fastfood,
                firstColor: Color(0xFF8CF892),
                secondColor: Color(0xFF1FB046),
                text: "Grocery"
              )
            ]
          )
        ]
      ),
    );
  }
}

class _SingleCard extends StatelessWidget {
  final IconData icon;
  final Color firstColor;
  final Color secondColor;
  final String text;

  const _SingleCard({
    Key? key,
    required this.icon,
    required this.firstColor,
    required this.secondColor,
    required this.text
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final circleDecoration = BoxDecoration(
      shape: BoxShape.circle,
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        stops: [0.1, 0.6],
        colors: [this.firstColor, this.secondColor]
      )
    );

    return _CardBackground(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: circleDecoration,
            child: CircleAvatar(
              radius: 30.0,
              backgroundColor: Colors.transparent,
              child: Icon(this.icon, size: 35.0, color: Colors.white)
            )
          ),
          SizedBox(height: 20.0),
          Text(this.text, style: TextStyle(color: Color(0xFF249CF4), fontSize: 18.0))
        ]
      )
    );
  }
}

class _CardBackground extends StatelessWidget {
  final Widget child;

  const _CardBackground({
    Key? key,
    required this.child
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 5.0,
            sigmaY: 5.0
          ),
          child: Container(
            height: 180.0,
            decoration: BoxDecoration(
              color: Color.fromRGBO(62, 66, 107, 0.7),
            ),
            child: this.child
          )
        )
      )
    );
  }
}
