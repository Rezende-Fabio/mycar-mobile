import 'package:flutter/material.dart';
import 'package:mycar_mobile/widgets/slide_menu/slide_menu.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 54, 54, 54),
        body: SlideMenu()
      ),
    );
  }
}


