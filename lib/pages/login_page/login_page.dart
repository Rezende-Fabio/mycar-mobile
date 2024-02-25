import 'package:flutter/material.dart';
import 'package:mycar_mobile/widgets/buttons/button_footer.dart';
import 'package:mycar_mobile/widgets/forms/form_login.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _controllerEmail = TextEditingController();
  final _controllerSenha = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Color.fromARGB(255, 54, 54, 54),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Center(
              child: SizedBox(
                width: 120,
                child: Image.asset("assets/img/Logo.png"),
              ),
            ),
            Center(
              child: Container(
                padding: const EdgeInsets.only(left: 20, right: 20),
                width: double.infinity,
                child: const Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Entrar",
                          style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontWeight: FontWeight.bold,
                            fontSize: 35,
                          ),
                        ),
                        Text(
                          "Entre com o seu E-mail e senha",
                          style: TextStyle(
                              color: Color.fromARGB(255, 181, 181, 181),
                              fontSize: 18),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Center(
              child: FormLogin(_controllerEmail, _controllerSenha, _formKey),
            ),
            ButtonFooter("Entrar", ""),
          ],
        ),
      ),
    );
  }
}
