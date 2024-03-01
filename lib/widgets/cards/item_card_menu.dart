import 'package:flutter/material.dart';

class ItemCardMenu extends StatelessWidget {
  const ItemCardMenu({super.key, required this.nome, required this.icone});

  final String nome;
  final IconData icone;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 24,),
          child: Divider(
            color: Colors.white,
            height: 1,
          ),
        ),
        ListTile(
          leading: SizedBox(
            height: 34,
            width: 34,
            child: Icon(
              icone,
              color: Colors.white,
              size: 25,
            ),
          ),
          title: Text(
            nome,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
