import 'package:flutter/material.dart';

class CardCar extends StatelessWidget {
  const CardCar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: Container(
        padding: EdgeInsets.all(10),
        width: 245,
        decoration: BoxDecoration(
          color: Color.fromARGB(42, 255, 255, 255),
          borderRadius: BorderRadius.all(Radius.circular(15)),
          border: Border.all(color: Color.fromARGB(255, 210, 0, 0), width: 0.5)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: Container(
                width: 100,
                child: Image.asset("assets/img/Logo.png"),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("GOL"),
                Text("Volkswagen"),
                Text("KM 150.000"),
              ],
            )
          ],
        ),
      ),
    );
  }
}