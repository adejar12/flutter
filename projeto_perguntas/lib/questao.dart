import 'package:flutter/material.dart';

class Questao extends StatelessWidget {
  /// Não esqueça que em  */
  final String texto;

  /// Questão é o construtor */
  Questao(this.texto);

  @override
  Widget build(BuildContext context) {
    return Text(texto);
  }
}
