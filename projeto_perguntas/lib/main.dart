// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:projeto_perguntas/models/pergunta_respostas.dart';
import 'titulo_questao.dart';
import 'botao_respostas.dart';

main() {
  runApp(PerguntaApp());
}

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  final List<PerguntaRespostas> perguntas = [
    PerguntaRespostas(
      pergunta: 'Qual é a sua cor favorita?',
      respostas: ['Verde', 'Azul', 'Verde', 'Vermelho'],
    ),
    PerguntaRespostas(
      pergunta: 'Qual é o seu animal favorito?',
      respostas: ['Cachorro', 'Gato', 'Passarinho', 'Coelho'],
    ),
    PerguntaRespostas(
      pergunta: 'Qual é seu jogo favorito?',
      respostas: ['Dota 2', 'Left 4 dead', 'Batman', 'Outro'],
    )
  ];

  void _responder() {
    if (_perguntaSelecionada + 1 == perguntas.length) {
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
    List<Widget> respostas = [];

    for (var textoRespo in perguntas[_perguntaSelecionada].respostas) {
      respostas.add(BotaoResposta(textoRespo, _responder));
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: [
            TituloQuestao(perguntas[_perguntaSelecionada].pergunta),
            ...respostas,
          ],
        ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  const PerguntaApp({Key? key}) : super(key: key);

  @override
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
