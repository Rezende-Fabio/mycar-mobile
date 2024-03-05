import 'dart:ffi';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:mycar_mobile/pages/home_page/home_page.dart';
import 'package:mycar_mobile/widgets/buttons/button_slide_menu.dart';
import 'package:mycar_mobile/widgets/slide_menu/slide_menu_item.dart';

class SlideMenu extends StatefulWidget {
  const SlideMenu({super.key});

  @override
  State<SlideMenu> createState() => _SlideMenuState();
}

class _SlideMenuState extends State<SlideMenu>
    with SingleTickerProviderStateMixin {
  bool menuAberto = false;

  late AnimationController _animationController;
  late Animation<double> animation;
  late Animation<double> scaleAnimation;
  String _page = '01';

  Map telas = {
    "01": HomePage(),
  };

  void setPage(String page) {
    setState(() {
      _page = page;
    });
  }

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    )..addListener(() {
        setState(() {});
      });

    animation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
          parent: _animationController, curve: Curves.fastOutSlowIn),
    );
    scaleAnimation = Tween<double>(begin: 1, end: 0.85).animate(
      CurvedAnimation(
          parent: _animationController, curve: Curves.fastOutSlowIn),
    );
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 210, 0, 0),
        extendBody: true,
        body: Stack(
          children: [
            AnimatedPositioned(
              duration: Duration(milliseconds: 200),
              curve: Curves.fastOutSlowIn,
              width: 288,
              left: menuAberto ? 0 : -288,
              height: MediaQuery.of(context).size.height,
              child: SlideMenuItem(setPage: setPage,),
            ),
            Transform(
              alignment: Alignment.center,
              transform: Matrix4.identity()
                ..setEntry(3, 2, 0.001)
                ..rotateY(animation.value - 30 * animation.value * pi / 180),
              child: Transform.translate(
                offset: Offset(animation.value * 288, 0),
                child: Transform.scale(
                  scale: scaleAnimation.value,
                  child: ClipRRect(
                    borderRadius:
                        BorderRadius.all(Radius.circular(menuAberto ? 25 : 0)),
                    child: telas[_page],
                  ),
                ),
              ),
            ),
            AnimatedPositioned(
              duration: Duration(milliseconds: 200),
              left: menuAberto ? 250 : 0,
              child: ButtonSlideMenu(
                press: () {
                  if (menuAberto) {
                    _animationController.reverse();
                  } else {
                    _animationController.forward();
                  }
                  setState(() {
                    menuAberto = !menuAberto;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
