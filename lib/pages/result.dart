
import 'package:calc_juros/_core/colors.dart';
import 'package:calc_juros/_core/juros.dart';
import 'package:calc_juros/routes/routes.dart';
import 'package:flutter/material.dart';


class Resultado extends StatefulWidget {
  const Resultado({super.key});

  @override
  ResultadoState createState() => ResultadoState();
}

class ResultadoState extends State<Resultado> {
  void _onItemTapped(int index) {
    if (index == 0) {
      AppRoutes.pop(context);
    } else if (index == 1) {
      AppRoutes.call(context, "/main")();
    }
  }

  @override
  Widget build(BuildContext context) {
    final JurosTipo jurosTipo =
        ModalRoute.of(context)!.settings.arguments as JurosTipo;

    final juros = jurosTipo.juros;
    final tipo = jurosTipo.tipo;

    return MaterialApp(
      title: 'Calculo de juros $tipo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Calculo de juros $tipo'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Calculo de juros $tipo',
                style: const TextStyle(
                    fontSize: 30,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                '$juros',
                style:
                    const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: AppColors.mainColor,
          selectedItemColor: AppColors.textLight,
          currentIndex: 1,
          selectedFontSize: 20,
          unselectedFontSize: 20,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.error, color: AppColors.textLight),
              label: 'Corrigir',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home, color: AppColors.textLight),
              label: 'Novo Cálculo',
            ),
          ],
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}