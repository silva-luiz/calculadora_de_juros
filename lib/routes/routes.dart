import 'package:flutter/material.dart';

class AppRoutes {
  static Map<String, Widget Function(BuildContext)> loadRoutes() {
    return {
      //'/simples': (context) => const JurosSimplesPage(),
      //'/composto': (context) => const JurosCompostoPage(),
      
    };
  }

  static void Function() call(BuildContext context, String rota) {
    return () {
      Navigator.pushNamed(context, rota);
    };
  }
}