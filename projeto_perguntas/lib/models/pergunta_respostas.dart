class PerguntaRespostas {
  String pergunta;
  List<String> respostas;
  String? algumaCoisaNaoObrigatoria;

  PerguntaRespostas({
    required this.pergunta,
    required this.respostas,
    this.algumaCoisaNaoObrigatoria,
  });
}
