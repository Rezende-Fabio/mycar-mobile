import 'package:flutter/material.dart';

class ButtonSlideMenu extends StatefulWidget {
  const ButtonSlideMenu({super.key, required this.press});

  final VoidCallback press;

  @override
  State<ButtonSlideMenu> createState() => _ButtonSlideMenuState();
}

class _ButtonSlideMenuState extends State<ButtonSlideMenu>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  bool isPlay = false;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: widget.press,
        onTapUp: (details) {
          if (isPlay) {
            _animationController.reverse();
            isPlay = !isPlay;
          } else {
            _animationController.forward();
            isPlay = !isPlay;
          }
        },
        child: CircleAvatar(
          backgroundColor: isPlay ? const Color.fromARGB(255, 54, 54, 54) : const Color.fromARGB(255, 210, 0, 0),
          child: AnimatedIcon(
            progress: _animationController,
            icon: AnimatedIcons.menu_close,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
