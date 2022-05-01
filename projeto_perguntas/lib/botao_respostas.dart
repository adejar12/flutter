import 'package:flutter/material.dart';

class BotaoResposta extends StatelessWidget {
  final String texto;
  final void Function() quandoSelecionado;

  const BotaoResposta(this.texto, this.quandoSelecionado, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: quandoSelecionado,
        child: Text(texto),
        style: ElevatedButton.styleFrom(
          primary: Colors.blue,
          onPrimary: Colors.white,
        ),
      ),
    );
  }
}
