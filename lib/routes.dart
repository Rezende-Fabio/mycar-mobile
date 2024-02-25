import 'package:flutter/material.dart';
import 'package:mycar_mobile/pages/start_page/start_page.dart';

class RouteGenerator {
  static const String startPage = '/';

  RouteGenerator._();

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case startPage:
        return MaterialPageRoute(
          builder: (_) => const Start(),
        );
      default:
        throw const FormatException("Rota não encontrada");
    }
  }
}
