import 'package:flutter/material.dart';

class TransactionForm extends StatelessWidget {
  String title = "";
  String value = "";
  final void Function(String, double) onSubmit;

  TransactionForm({required this.onSubmit});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        margin: const EdgeInsets.all(10),
        child: Column(children: [
          TextField(
            onChanged: (newValue) => title = newValue,
            decoration: InputDecoration(labelText: 'Título'),
          ),
          TextField(
            onChanged: (newValue) => value = newValue,
            decoration: InputDecoration(labelText: 'Valor (R\$)'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                onPressed: () {
                  onSubmit(title, double.tryParse(value) ?? 0.00);
                },
                child: const Text('Nova Transação'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.purple,
                  onPrimary: Colors.white,
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
