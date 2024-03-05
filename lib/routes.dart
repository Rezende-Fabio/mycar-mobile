import 'package:flutter/material.dart';
import 'package:mycar_mobile/pages/home_page/home_page.dart';
import 'package:mycar_mobile/pages/login_page/login_page.dart';
import 'package:mycar_mobile/pages/start_page/start_page.dart';
import 'package:mycar_mobile/widgets/slide_menu/slide_menu.dart';

class RouteGenerator {
  static const String startPage = '/';
  static const String loginPage = '/login';
  static const String homePage = "/home";

  RouteGenerator._();

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case startPage:
        return MaterialPageRoute(
          builder: (_) => const StartPage(),
        );
      case loginPage:
        return MaterialPageRoute(
          builder: (_) => const LoginPage(),
        );
      case homePage:
        return MaterialPageRoute(
          builder: (_) => const SlideMenu(),
        );
      default:
        throw const FormatException("Rota não encontrada");
    }
  }
}
