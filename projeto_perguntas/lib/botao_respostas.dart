import 'package:flutter/material.dart';
import 'package:projeto_perguntas/models/respostas.dart';

class BotaoResposta extends StatelessWidget {
  final Respostas resposta;
  final void Function(int) quandoSelecionado;

  const BotaoResposta(this.resposta, this.quandoSelecionado, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () => quandoSelecionado(resposta.nota),
        child: Text(resposta.texto),
        style: ElevatedButton.styleFrom(
          primary: Colors.blue,
          onPrimary: Colors.white,
        ),
      ),
    );
  }
}
