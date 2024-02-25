import 'package:flutter/material.dart';
import 'package:mycar_mobile/widgets/buttons/button_footer.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Color.fromARGB(255, 54, 54, 54),
        child: Padding(
          padding: EdgeInsets.only(top: 100, bottom: 115),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  SizedBox(
                    width: 250,
                    child: Image.asset("assets/img/Logo.png"),
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: ButtonFooter("Entrar", "/login"),
                  ),
                  ButtonFooter("Registar", ""),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
