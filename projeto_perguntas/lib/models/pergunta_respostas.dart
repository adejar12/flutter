import 'respostas.dart';

class PerguntaRespostas {
  String pergunta;
  List<Respostas> respostas;
  String? algumaCoisaNaoObrigatoria;

  PerguntaRespostas({
    required this.pergunta,
    required this.respostas,
    this.algumaCoisaNaoObrigatoria,
  });
}
