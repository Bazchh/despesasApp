// ignore_for_file: sort_child_properties_last

import 'package:despesas/Componentes/DespesasAppInterface.dart';
import 'package:despesas/Componentes/TransacoesDoUsuario.dart';
import 'package:despesas/Modelos/Transacao.dart';
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
      body: DespesasAppInterface(),
    );
  }
}
