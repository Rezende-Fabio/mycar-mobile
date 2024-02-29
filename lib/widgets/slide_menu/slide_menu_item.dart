import 'package:flutter/material.dart';

class SlideMenuItem extends StatelessWidget {
  const SlideMenuItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 24, top: 15, bottom: 10),
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
              Icons.home,
              color: Colors.white,
              size: 25,
            ),
          ),
          title: Text(
            "Início",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}