import 'package:calc_juros/pages/menu.dart';
import 'package:calc_juros/routes/routes.dart';
import 'package:flutter/material.dart';

import '_core/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculadora de juros',
      initialRoute: '/main',
      routes: AppRoutes.loadRoutes(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.mainColor),
        useMaterial3: true,
      ),
      home: const CalcMenuPage(),
    );
  }
}
