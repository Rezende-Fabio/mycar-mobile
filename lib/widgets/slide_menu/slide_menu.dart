import 'package:flutter/material.dart';
import 'package:mycar_mobile/widgets/cards/info_card_menu.dart';
import 'package:mycar_mobile/widgets/slide_menu/slide_menu_item.dart';

class SlideMenu extends StatefulWidget {
  const SlideMenu({super.key});

  @override
  State<SlideMenu> createState() => _SlideMenuState();
}

class _SlideMenuState extends State<SlideMenu> {
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
              style: Theme.of(context).textTheme.titleMedium!.copyWith(color:Colors.white),
            ),
          ),
          SlideMenuItem()
        ],
      ),
    );
  }
}


