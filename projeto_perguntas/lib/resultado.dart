import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  const Resultado({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Parabéns",
        style: TextStyle(fontSize: 28),
      ),
    );
  }
}
