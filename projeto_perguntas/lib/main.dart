// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:projeto_perguntas/models/pergunta_respostas.dart';
import 'package:projeto_perguntas/models/respostas.dart';
import 'package:projeto_perguntas/questionario.dart';
import 'package:projeto_perguntas/resultado.dart';
import 'titulo_questao.dart';
import 'botao_respostas.dart';

main() {
  runApp(PerguntaApp());
}

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  var _pontuacaoTotal = 0;

  final List<PerguntaRespostas> perguntas = [
    PerguntaRespostas(
      pergunta: 'Qual é a sua cor favorita?',
      respostas: [
        Respostas(texto: 'Verde', nota: 10),
        Respostas(texto: 'Azul', nota: 20),
        Respostas(texto: 'Verde', nota: 30),
        Respostas(texto: 'Vermelho', nota: 40),
      ],
    ),
    PerguntaRespostas(
      pergunta: 'Qual é o seu animal favorito?',
      respostas: [
        Respostas(texto: 'Cachorro', nota: 10),
        Respostas(texto: 'Gato', nota: 20),
        Respostas(texto: 'Passarinho', nota: 30),
        Respostas(texto: 'Coelho', nota: 40),
      ],
    ),
    PerguntaRespostas(
      pergunta: 'Qual é seu jogo favorito?',
      respostas: [
        Respostas(texto: 'Dota 2', nota: 10),
        Respostas(texto: 'Left 4 dead', nota: 20),
        Respostas(texto: 'Batman', nota: 30),
        Respostas(texto: 'Outro', nota: 40),
      ],
    )
  ];

  void _responder(int pontuacao) {
    //Sempre que precisar renderizar, chame o setState
    //Parecido com o useState do React
    setState(() {
      _perguntaSelecionada++;
      _pontuacaoTotal += pontuacao;
    });

    print(_pontuacaoTotal);
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<Respostas> respostas =
        temPerguntaSelecionada ? perguntas[_perguntaSelecionada].respostas : [];
    List<Widget> widgets = respostas
        .map((resposta) => BotaoResposta(resposta, _responder))
        .toList();

    /*
    
      Forma antiga de se fazer

    for (var textoRespo in respostas) {
      widgets.add(BotaoResposta(textoRespo, _responder));
    }*/

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: temPerguntaSelecionada
            ? Questionario(
                titulo: perguntas[_perguntaSelecionada].pergunta,
                respostas: widgets,
              )
            : const Resultado(),
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
