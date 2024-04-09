import 'dart:math';

class JurosTipo {
  final double _capital = 0.0;
  final double _taxa = 0.0 / 100;
  final double _tempo = 0.0;
  final double _periodo = 0.0;

  final String _tipo = "";
  double _juros = 0.0;

  get capital {
    return _capital.toStringAsFixed(2);
  }

  get taxa {
    return _taxa.toStringAsFixed(2);
  }

  get tempo {
    return _tempo.toStringAsFixed(2);
  }

  get periodo {
    return _periodo.toStringAsFixed(2);
  }

  get tipo {
    return _tipo;
  }

  get juros {
    return _juros.toStringAsFixed(2);
  }

  JurosTipo.simples({double capital = 0.0, double taxa = 0.0, double tempo = 0.0}) {
    _juros = capital * taxa * tempo;
  }

  JurosTipo.compostos(
      {double capital = 0.0,
      double taxa = 0.0,
      double tempo = 0.0,
      double periodo = 0.0}) {
        _juros = capital * pow((1 + taxa / periodo), periodo * tempo);
      }
}
