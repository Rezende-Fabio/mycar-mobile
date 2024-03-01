import 'package:flutter/material.dart';
import 'package:mycar_mobile/widgets/cards/item_card_menu.dart';

class SlideMenuItem extends StatefulWidget {
  SlideMenuItem({
    super.key,
  });

  @override
  State<SlideMenuItem> createState() => _SlideMenuItemState();
}

class _SlideMenuItemState extends State<SlideMenuItem> {
  bool ativo = false;

  List<Map> list = [
    {"nome": "Início", "icone": Icons.home},
    {"nome": "Carros", "icone": Icons.garage},
    {"nome": "Manutenções", "icone": Icons.car_repair},
    {"nome": "Gastos", "icone": Icons.monetization_on_outlined}
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: list.map((e) {
        return Stack(
          children: [
            AnimatedPositioned(
              duration: const Duration(milliseconds: 300),
              curve: Curves.fastOutSlowIn,
              height: 56,
              width: ativo ? 263 : 0,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10)),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  ativo = !ativo;
                });
              },
              child: ItemCardMenu(
                nome: e["nome"],
                icone: e["icone"],
              ),
            ),
          ],
        );
      }).toList(),
    );
  }
}
