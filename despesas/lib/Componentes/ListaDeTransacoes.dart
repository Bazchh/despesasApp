import 'package:despesas/Modelos/Transacao.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ListaDeTransacoes extends StatelessWidget {
  final List<Transacao> transacoes;

  ListaDeTransacoes(this.transacoes);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 730,
      child: ListView.builder(
        itemCount: transacoes.length,
        itemBuilder: (ctx, index) {
          final tr = transacoes[index];
          return Card(
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Text(
                    'R\$ ${tr.valor.toStringAsFixed(2)}',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                    border: Border.all(
                      color: Theme.of(context).colorScheme.primary,
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
                        tr.titulo,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        DateFormat('d/MMM/y H:m:s').format(tr.data),
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
        },
      ),
    );
  }
}
