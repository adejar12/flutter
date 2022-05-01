import 'package:flutter/material.dart';

class TituloQuestao extends StatelessWidget {
  /// Não esqueça que em
  final String texto;

  /// Questão é o construtor
  const TituloQuestao(this.texto, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(20),
      child: Text(
        texto,
        style: const TextStyle(fontSize: 23),
        textAlign: TextAlign.center,
      ),
    );
  }
}
