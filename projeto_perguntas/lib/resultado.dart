import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontucao;

  String get fraseResultado {
    if (pontucao < 80) {
      return 'Parabens';
    } else if (pontucao < 120) {
      return 'Você é bom';
    } else {
      return 'Top de mais';
    }
  }

  const Resultado(this.pontucao, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        fraseResultado,
        style: TextStyle(fontSize: 28),
      ),
    );
  }
}
