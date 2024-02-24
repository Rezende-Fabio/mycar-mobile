import 'package:flutter/material.dart';

class ButtonFooter extends StatelessWidget {
  final String text;
  const ButtonFooter(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 35, right: 35, top: 8),
      width: double.infinity,
      height: 70,
      child: ElevatedButton(
        onPressed: () => {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Color.fromARGB(255, 210, 0, 0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          shadowColor: Color.fromARGB(255, 255, 255, 255),
          surfaceTintColor: Color.fromARGB(255, 160, 146, 146),
        ),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 17,
            color: Color.fromARGB(255, 255, 255, 255),
          ),
        ),
      ),
    );
  }
}
