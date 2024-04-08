import 'package:flutter/material.dart';

import '../components/input_decoratin.dart';

class JurosSimplesPage extends StatefulWidget {
  const JurosSimplesPage({super.key});

  @override
  State<JurosSimplesPage> createState() => _JurosSimplesPageState();
}

TextEditingController numberController = TextEditingController();
TextEditingController jurosController = TextEditingController();
TextEditingController timeController = TextEditingController();

class _JurosSimplesPageState extends State<JurosSimplesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cáculo de juros simples"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text("Digite o capital inicial:"),
            TextField(
              controller: numberController,
              decoration: getInputDecoration("Capital Inicial(C):"),
          ),
        ],
      ),
    );
  }
}
