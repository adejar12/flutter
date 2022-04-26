// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

main() {
  runApp(PerguntaApp());
}

class PerguntaApp extends StatelessWidget {
  // Não é recomendado utilizar variaveis que não sejam finais nesse tipo de classe
  // pois a mesma é imutavel e contem variaveis que podem ser modificadas?, não
  // faz sentido
  var perguntaSelecionada = 0;

  void responder() {
    perguntaSelecionada++;
    print('pergunta respondida!');
    print('perguntaSelecionada ==> $perguntaSelecionada');
  }

  @override
  Widget build(BuildContext context) {
    final List<String> perguntas = [
      'Qual é a sua cor favorita?',
      'Qual é o seu animal favorito?'
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: [
            Text(perguntas[perguntaSelecionada]),
            ElevatedButton(onPressed: responder, child: Text('Resposta 1')),
            ElevatedButton(onPressed: responder, child: Text('Resposta 2')),
            ElevatedButton(onPressed: responder, child: Text('Resposta 3')),
          ],
        ),
      ),
    );
  }
}
