import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({
    super.key,
    required this.nome,
  });

  final String nome;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircleAvatar(
        backgroundColor: Color.fromARGB(255, 54, 54, 54),
        child: Icon(
          Icons.person,
          color: Colors.white,
        ),
      ),
      title: Text(
        nome,
        style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
      ),
    );
  }
}