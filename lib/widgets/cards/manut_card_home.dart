import 'package:flutter/material.dart';

class CardManut extends StatelessWidget {
  final String title;
  final String date;
  final double value;

  const CardManut({
    super.key, required this.title, required this.date, required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: const Color.fromARGB(255, 203, 29, 29),
          child: Icon(
            Icons.car_repair,
            color: const Color.fromARGB(255, 255, 255, 255),
          ),
        ),
        title: Text(
          title,
          style: TextStyle(color: Colors.white),
        ),
        subtitle: Text(
          date,
          style: TextStyle(color: const Color.fromARGB(153, 255, 255, 255)),
        ),
        trailing: Text(
          "R\$ ${value}",
          style: TextStyle(color: Colors.white, fontSize: 12),
        ),
      ),
    );
  }
}
