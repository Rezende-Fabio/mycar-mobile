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
        padding: const EdgeInsets.all(10),
        width: 245,
        decoration: const BoxDecoration(
          color: Color.fromARGB(42, 255, 255, 255),
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  "assets/img/CarDefault.png",
                  width: 80,
                ),
              ),
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "GOL",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Volkswagen",
                  style: TextStyle(
                      color: Color.fromARGB(236, 202, 202, 202),
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "KM 150.000",
                  style: TextStyle(
                      color: Color.fromARGB(236, 202, 202, 202),
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
