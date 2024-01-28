import 'package:despesas/Modelos/Transacao.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ListaDeTransacoes extends StatelessWidget {
  List<Transacao> transacoes;

  ListaDeTransacoes(this.transacoes);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: transacoes.map((transacoes) {
        return Card(
          color: Colors.blue,
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Text(
                  'R\$ ${transacoes.valor.toStringAsFixed(2)}',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.purple,
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.0),
                  border: Border.all(
                    color: Colors.black,
                    width: 1,
                  ),
                ),
                padding: EdgeInsets.all(10),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      transacoes.titulo,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Container(
                    child: Text(
                      DateFormat('d/MMM/y H:m:s').format(transacoes.data),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 10,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}
