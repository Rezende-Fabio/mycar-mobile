import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mycar_mobile/style/text_style.dart' as Style;
import 'package:mycar_mobile/widgets/cards/car_card_home.dart';
import 'package:mycar_mobile/widgets/chart/bar_chart_home.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 54, 54, 54),
      body: SafeArea(
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: Text(
                    "Início",
                    style: Style.styleTitle,
                  ),
                )
              ],
            ),
            BarChartHome(),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Veículos",
                    style: Style.styleSubTitle,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 120,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CardCar(),
                  CardCar(),
                  CardCar(),
                  CardCar(),
                  CardCar(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}