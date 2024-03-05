import 'package:flutter/material.dart';
import 'package:mycar_mobile/widgets/cards/info_card_menu.dart';
import 'package:mycar_mobile/widgets/cards/item_card_menu.dart';

class SlideMenuItem extends StatefulWidget {
  final void Function(String) setPage;

  const SlideMenuItem({
    super.key,
    required this.setPage,
  });

  @override
  State<SlideMenuItem> createState() => _SlideMenuItemState();
}

class _SlideMenuItemState extends State<SlideMenuItem> {
  bool ativo = false;

  List<Map> list = [
    {"nome": "Início", "icone": Icons.home, "page": "01"},
    {"nome": "Carros", "icone": Icons.garage, "page": "02"},
    {"nome": "Manutenções", "icone": Icons.car_repair, "page": "03"},
    {"nome": "Gastos", "icone": Icons.monetization_on_outlined, "page": "04"}
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.67,
      height: double.infinity,
      color: Color.fromARGB(255, 210, 0, 0),
      child: Column(
        children: [
          InfoCard(
            nome: "José Alfonso",
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30, bottom: 15),
            child: Text(
              "Procurar",
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(color: Colors.white),
            ),
          ),
          Column(
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
                      widget.setPage(e["page"]);
                    },
                    child: ItemCardMenu(
                      nome: e["nome"],
                      icone: e["icone"],
                    ),
                  ),
                ],
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
