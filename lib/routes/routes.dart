import 'package:flutter/material.dart';

import '../pages/juros_simples.dart';
import '../pages/menu.dart';

class AppRoutes {
  static Map<String, Widget Function(BuildContext)> loadRoutes() {
    return {
      '/main' : (context) => const CalcMenuPage(),
      '/simples': (context) => const JurosSimplesPage(),
      //'/composto': (context) => const JurosCompostoPage(),
    };
  }

  static void Function() call(BuildContext context, String rota) {
    return () {
      Navigator.pushNamed(context, rota);
    };
  }
}
