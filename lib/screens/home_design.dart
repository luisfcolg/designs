import 'package:flutter/material.dart';

import 'package:designs/widgets/background.dart';
import 'package:designs/widgets/custom_button_navigation.dart';
import 'package:designs/widgets/page_title.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Stack(
        children: [
          Background(),
          _HomeBody()
        ]
      ),
      bottomNavigationBar: CustomBottomNavigation()
    );
  }
}

class _HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              PageTitle()
            ]
          )
        )
      ),
    );
  }
}
