import 'package:calc_juros/pages/juros_composto.dart';
import 'package:calc_juros/pages/result.dart';
import 'package:flutter/material.dart';

import '../pages/juros_simples.dart';
import '../pages/menu.dart';

class AppRoutes {
  static Map<String, Widget Function(BuildContext)> loadRoutes() {
    return {
      '/main': (context) => const CalcMenuPage(),
      '/simples': (context) => const JurosSimplesPage(),
      '/composto': (context) => const JurosCompostoPage(),
      '/result' : (context) => const Resultado(), 
    };
  }

  static void Function() call(BuildContext context, String rota) {
    return () {
      Navigator.pushNamed(context, rota);
    };
  }

  static void pushNamed(BuildContext context, String rota,
      [Object data = Object]) {
    Navigator.pushNamed(context, rota, arguments: data);
  }

  static void pop(BuildContext context) {
    Navigator.pop(context);
  }
}
