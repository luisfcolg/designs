import 'package:flutter/material.dart';

class CustomBottomNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: Color.fromRGBO(236, 98, 188, 1),
      unselectedItemColor: Color.fromRGBO(116, 117, 152, 1),
      backgroundColor: Color.fromRGBO(55, 57, 84, 1),
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_today_outlined),
          label: "Calendar"
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.pie_chart_outlined),
          label: "Chart"
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline),
          label: "User"
        )
      ]
    );
  }
}
