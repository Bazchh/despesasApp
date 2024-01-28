// ignore_for_file: sort_child_properties_last

import 'package:despesas/Componentes/TransacoesDoUsuario.dart';
import 'package:flutter/material.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DespesasApp'),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            width: double.infinity,
            // ignore: prefer_const_constructors
             child: Card(
              child: Text('Página inicial',),
              elevation: 5,
              color: Colors.blue,
            ),
          ),
          TransacoesDoUsuario(),
        ],
      ),
    );
  }
}
