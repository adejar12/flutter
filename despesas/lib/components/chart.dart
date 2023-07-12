import 'package:despesas/models/transation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart'

class Chart extends StatelessWidget {
  final List<Transaction> recentTransaction;

  const Chart({Key? key, required this.recentTransaction}) : super(key: key);

  List<Map<String, Object>> get groupedTransactions {
    return List.generate(7, (index) {
      final weekDay = DateTime.now().subtract(Duration(days: index));

      double totalSum = 0.0;

      for(var i=0;i<recentTransaction.length; i++){
        bool sameDay =  recentTransaction[i].date.day == weekDay.day;
        bool sameMoth =  recentTransaction[i].date.month == weekDay.month;
        bool sameYear =  recentTransaction[i].date.year == weekDay.year;

        if(sameDay && sameMoth && sameYear){
          totalSum += recentTransaction[i].value;
        }
      }

      return {'day': DateFormat.E().format(weekDay)[0], 'value': totalSum};
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Card(
      elevation: 6,
      margin: EdgeInsets.all(20),
      child: Row(
        children: [],
      ),
    );
  }
}
