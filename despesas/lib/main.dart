// ignore_for_file: sort_child_properties_last

import 'package:despesas/Modelos/Transacao.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

main() => runApp(despesasApp());

class despesasApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: homePage(),
    );
  }
}

class homePage extends StatelessWidget {

  final controladorTitulo = TextEditingController();
  final controladorValor = TextEditingController();


  final _transacoes = [
    Transacao(
        id: '1',
        titulo: 'primeira transacao',
        valor: 200.00,
        data: DateTime.now()),
    Transacao(
        id: '2',
        titulo: 'segunda transacao',
        valor: 245.01,
        data: DateTime.now()),
    Transacao(
        id: '3',
        titulo: 'terceira transacao',
        valor: 155.00,
        data: DateTime.now()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina inicial'),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            width: double.infinity,
            // ignore: prefer_const_constructors
            child: Card(
              child: Text('Testando'),
              elevation: 5,
              color: Colors.blue,
            ),
          ),
          Column(
            children: _transacoes.map((_transacoes) {
              return Card(
                color: Colors.blue,
                child: Row(
                  children: [
                    Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      child: Text(
                        'R\$ ${_transacoes.valor.toStringAsFixed(2)}',
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
                            _transacoes.titulo,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Container(                        
                          child: Text(
                            DateFormat('d/MMM/y H:m:s')
                                .format(_transacoes.data),
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
          ),
          Card(
            elevation: 5,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: <Widget>[
                  TextField(
                    controller: controladorTitulo,
                    decoration:InputDecoration(labelText: 'Titulo da transação'),),
                  TextField(
                    controller: controladorValor,
                    decoration: InputDecoration(labelText: 'Valor (R\$)'),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      
                      TextButton(                    
                        onPressed: () {
                        print('Titulo da compra: ' + controladorTitulo.text);
                        print('Valor: '+ controladorValor.text);
                        },
                        child: Text('Nova transação',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold, color: Colors.purple)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
