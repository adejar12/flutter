import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontucao;
  final void Function() reiniciarQuestionario;

  String get fraseResultado {
    if (pontucao < 80) {
      return 'Parabens';
    } else if (pontucao < 120) {
      return 'Você é bom';
    } else {
      return 'Top de mais';
    }
  }

  const Resultado(
      {required this.pontucao, required this.reiniciarQuestionario});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'E sua pontuação é:',
          style: TextStyle(fontSize: 18),
        ),
        Center(
          child: Text(
            fraseResultado,
            style: TextStyle(fontSize: 28),
          ),
        ),
        ElevatedButton(
          onPressed: () => reiniciarQuestionario(),
          child: Text('REINICIAR'),
          style: ElevatedButton.styleFrom(
            primary: Colors.blue,
            onPrimary: Colors.white,
          ),
        ),
      ],
    );
  }
}
