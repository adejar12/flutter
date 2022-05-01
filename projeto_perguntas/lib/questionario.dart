import 'package:flutter/material.dart';
import 'titulo_questao.dart';
import 'botao_respostas.dart';

class Questionario extends StatelessWidget {
  final String titulo;
  final List<Widget> respostas;

  const Questionario({required this.titulo, required this.respostas});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TituloQuestao(titulo),
        ...respostas,
      ],
    );
  }
}
