import 'package:flutter/material.dart';

import '../_core/colors.dart';

class CalcMenuPage extends StatefulWidget {
  const CalcMenuPage({super.key});

  @override
  State<CalcMenuPage> createState() => _CalcMenuPageState();
}

class _CalcMenuPageState extends State<CalcMenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.mainColor,
        title: const Text(
          "Calculadora de juros",
          style: TextStyle(color: AppColors.textLight),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Para iniciar a calculadora, selecione o tipo de juros que deseja calcular:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/simples");
                },
                child: const Text("Juros simples"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                onPressed: () {},
                child: const Text("Juros compostos"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
