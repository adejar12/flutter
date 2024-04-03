import 'package:flutter/material.dart';

class ChartBar extends StatelessWidget {
  final String label;
  final double value;
  final double percentage;

  const ChartBar(
      {Key? key,
      required this.label,
      required this.value,
      required this.percentage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 20,
          child: FittedBox(child: Text('${value.toStringAsFixed(2)}')),
        ),
        SizedBox(height: 5),
        Container(
          height: 60,
          width: 10,
          child: Stack(alignment: Alignment.bottomCenter, children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                  width: 1.0,
                ),
                color: Color.fromRGBO(220, 220, 220, 1),
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            FractionallySizedBox(
              heightFactor: percentage,
              child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            )
          ]),
        ),
        SizedBox(height: 5),
        Text(label)
      ],
    );
  }
}
