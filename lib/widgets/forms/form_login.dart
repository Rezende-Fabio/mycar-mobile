import 'package:flutter/material.dart';
import 'package:mycar_mobile/mixins/validations_mixin.dart';


class FormLogin extends StatefulWidget {
  final TextEditingController _controllerEmail;
  final TextEditingController _controllerSenha;
  final GlobalKey<FormState> _formKey;
  const FormLogin(this._controllerEmail, this._controllerSenha, this._formKey,
      {super.key});

  @override
  State<FormLogin> createState() => _FormLoginState();
}

class _FormLoginState extends State<FormLogin> with ValidationsMixin {
  bool _verSenha = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20),
      width: double.infinity,
      child: Form(
        key: widget._formKey,
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 25),
              child: TextFormField(
                validator: (value) => validateEmail(value),
                controller: widget._controllerEmail,
                textInputAction: TextInputAction.next,
                decoration: const InputDecoration(
                  labelText: "E-mail",
                ),
              ),
            ),
            TextFormField(
              validator: (value) => validatePassword(value),
              controller: widget._controllerSenha,
              obscureText: _verSenha,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                labelText: "Senha",
                suffixIcon: IconButton(
                  icon: _verSenha
                      ? const Icon(Icons.visibility)
                      : const Icon(Icons.visibility_off),
                  onPressed: () => {
                    setState(() {
                      _verSenha = !_verSenha;
                    })
                  },
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 12, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("Esqueceu a senha?"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
