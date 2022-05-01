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
    //Sempre que precisar renderizar, chame o setState
    //Parecido com o useState do React
    setState(() {
      _perguntaSelecionada++;
    });
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<String> respostas =
        temPerguntaSelecionada ? perguntas[_perguntaSelecionada].respostas : [];
    List<Widget> widgets =
        respostas.map((text) => BotaoResposta(text, _responder)).toList();

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
            ? Column(
                children: [
                  TituloQuestao(perguntas[_perguntaSelecionada].pergunta),
                  ...widgets,
                ],
              )
            : Center(
                child: Text(
                  "Parabéns",
                  style: TextStyle(fontSize: 28),
                ),
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
