import 'package:despesas/models/transation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

main() => runApp(ExpensesApp());

class ExpensesApp extends StatelessWidget {
  const ExpensesApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  final _transactions = [
    Transaction(
      id: 't1',
      title: 'Novo Tênis de Corrida',
      value: 310.76,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Conta de luz',
      value: 211.30,
      date: DateTime.now(),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Despesas Pessoais'),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Container(
          child: Card(
            color: Colors.blue,
            child: Text('Grafico'),
            elevation: 5,
          ),
        ),
        Column(
          children: _transactions.map((tr) {
            return Card(
              child: Row(children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.purple,
                      width: 2,
                    ),
                  ),
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    'R\$ ${tr.value.toStringAsFixed(2)}',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.purple,
                    ),
                  ),
                ),
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text(tr.title,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      )),
                  Text(DateFormat('d MMM y').format(tr.date),
                      style: const TextStyle(
                        color: Colors.grey,
                      )),
                ]),
              ]),
            );
          }).toList(),
        ),
        Card(
          elevation: 5,
          child: Container(
            margin: const EdgeInsets.all(10),
            child: Column(children: [
              const TextField(
                decoration: InputDecoration(labelText: 'Título'),
              ),
              const TextField(
                decoration: InputDecoration(labelText: 'Valor (R\$)'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    onPressed: () {},
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
        )
      ]),
    );
  }
}
