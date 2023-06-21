import 'package:flutter/material.dart';

class TransactionForm extends StatefulWidget {
  final void Function(String, double) onSubmit;

  TransactionForm({required this.onSubmit});

  @override
  State<TransactionForm> createState() => _TransactionFormState();
}

class _TransactionFormState extends State<TransactionForm> {
  final titleController = TextEditingController();

  final valueController = TextEditingController();

  _submitForm() {
    final text = titleController.text;
    final value = double.tryParse(valueController.text) ?? 0.00;

    if (text.isEmpty || value <= 0) {
      return;
    }

    widget.onSubmit(text, value);
    titleController.text = "";
    valueController.text = "";
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Column(children: [
          TextField(
            controller: titleController,
            decoration: InputDecoration(labelText: 'Título'),
          ),
          TextField(
            controller: valueController,
            keyboardType: TextInputType.numberWithOptions(decimal: true),
            onSubmitted: (value) => _submitForm(),
            decoration: InputDecoration(labelText: 'Valor (R\$)'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                onPressed: _submitForm,
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
