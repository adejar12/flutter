// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

main() {
  runApp(PerguntaApp());
}

class PerguntaApp extends StatelessWidget {
  void responder() {
    print('pergunta respondida!');
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
            Text(perguntas[0]),
            ElevatedButton(onPressed: responder, child: Text('Resposta 1')),
            ElevatedButton(onPressed: responder, child: Text('Resposta 2')),
            ElevatedButton(
                onPressed: () {
                  print('Resposta 3');
                },
                child: Text('Resposta 3')),
            ElevatedButton(
                onPressed: () => print('Resposta 4'), child: Text('Resposta 4'))
          ],
        ),
      ),
    );
  }
}
