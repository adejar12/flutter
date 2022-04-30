// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import './questao.dart';
import './respostas.dart';

main() {
  runApp(PerguntaApp());
}

class PerguntaRespostas {
  String pergunta = "";
  List<String> respostas = [];

  PerguntaRespostas(this.pergunta, this.respostas);
}

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  void _responder() {
    if (_perguntaSelecionada + 1 == 2) {
      setState(() {
        _perguntaSelecionada = 0;
      });
      return;
    }

    //Sempre que precisar renderizar, chame o setState
    //Parecido com o useState do React
    setState(() {
      _perguntaSelecionada++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<PerguntaRespostas> perguntas = [
      PerguntaRespostas(
          'Qual é a sua cor favorita?', ['Verde', 'Azul', 'Verde', 'Vermelho']),
      PerguntaRespostas('Qual é o seu animal favorito?',
          ['Cachorro', 'Gato', 'Passarinho', 'Coelho']),
      PerguntaRespostas('Qual é seu jogo favorito?',
          ['Dota 2', 'Left 4 dead', 'Batman', 'Outro'])
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: [
            Questao(perguntas[_perguntaSelecionada].pergunta),
            Resposta('Resposta 1', _responder),
            Resposta('Resposta 2', _responder),
            Resposta('Resposta 3', _responder),
          ],
        ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
