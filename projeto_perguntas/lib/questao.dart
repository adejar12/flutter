import 'package:flutter/material.dart';

class Questao extends StatelessWidget {
  /// Não esqueça que em  */
  final String texto;

  /// Questão é o construtor */
  Questao(this.texto);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(20),
      child: Text(
        texto,
        style: TextStyle(fontSize: 23),
        textAlign: TextAlign.center,
      ),
    );
  }
}
