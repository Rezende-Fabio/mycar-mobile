import 'package:flutter/material.dart';
import 'package:mycar_mobile/pages/login_page/login_page.dart';
import 'package:mycar_mobile/pages/start_page/start_page.dart';

class RouteGenerator {
  static const String startPage = '/';
  static const String loginPage = '/login';

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
      default:
        throw const FormatException("Rota não encontrada");
    }
  }
}
