import 'package:calc_juros/_core/colors.dart';
import 'package:calc_juros/_core/juros.dart';
import 'package:calc_juros/routes/routes.dart';
import 'package:flutter/material.dart';

import '../components/input_decoratin.dart';

class JurosSimplesPage extends StatefulWidget {
  const JurosSimplesPage({super.key});

  @override
  State<JurosSimplesPage> createState() => _JurosSimplesPageState();
}

TextEditingController _capitalController = TextEditingController();
TextEditingController _jurosController = TextEditingController();
TextEditingController _tempoController = TextEditingController();
//double juros = 0.0;

class _JurosSimplesPageState extends State<JurosSimplesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cáculo de juros simples"),
      ),
      body: Center(
        child: Column(
          children: [
            const Text("Digite o capital inicial:"),
            SizedBox(
              width: 300,
              child: TextField(
                controller: _capitalController,
                decoration: getInputDecoration("Capital Inicial(C):"),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text("Digite a taxa de juros:"),
            SizedBox(
              width: 300,
              child: TextField(
                controller: _jurosController,
                decoration: getInputDecoration("Taxa de juros(i):"),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text("Digite o periodo:"),
            SizedBox(
              width: 300,
              child: TextField(
                controller: _tempoController,
                decoration: getInputDecoration("Periodo(n):"),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(
                width: 300,
                child: ElevatedButton(
                  onPressed: () {
                    calcularJurosSimples();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.mainColor,
                  ),
                  child: const Text(
                    "Calcular Juros Simples",
                    style: TextStyle(color: AppColors.textLight),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }

  void calcularJurosSimples() {
    double capitalInicial = double.parse(_capitalController.text);
    double taxaJuros = double.parse(_jurosController.text) / 100;
    double tempo = double.parse(_tempoController.text);
    JurosTipo tipo =
        JurosTipo.simples(capital: capitalInicial, taxa: taxaJuros, tempo: tempo);
    AppRoutes.pushNamed(context, '/result', tipo);
  }
}
