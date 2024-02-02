import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BarrasGraf extends StatelessWidget {
  final String label;
  final double valor;
  final double percent;

  BarrasGraf({
    required this.label,
    required this.valor,
    required this.percent,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(' R\$${valor.toStringAsFixed(1)} '),
        SizedBox(
          height: 5,
        ),
        Container(
          height: 60,
          width: 10,
          child: Stack(
            children: <Widget>[
              
            ],
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(label)
      ],
    );
  }
}
