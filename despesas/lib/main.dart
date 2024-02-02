// ignore_for_file: sort_child_properties_last
import 'dart:math';

import 'package:despesas/Componentes/Grafico.dart';
import 'package:despesas/Componentes/ListaDeTransacoes.dart';
import 'package:despesas/Modelos/Transacao.dart';
import 'package:despesas/Componentes/FormularioDeTransacoes.dart';
import 'package:flutter/material.dart';

main() => runApp(despesasApp());

class despesasApp extends StatelessWidget {
  final ThemeData tema = ThemeData();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: homePage(),
      theme: tema.copyWith(
        primaryColor: Colors.green[700],
        colorScheme: tema.colorScheme
            .copyWith(primary: Colors.green[500], secondary: Colors.green[700]),
        textTheme: tema.textTheme.copyWith(
          titleLarge: TextStyle(
            fontFamily: 'OpenSans',
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        appBarTheme: AppBarTheme(
          titleTextStyle: TextStyle(
            fontFamily: 'OpenSans',
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

class homePage extends StatefulWidget {
  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  final List<Transacao> _transactions = [];

 

  void _adicionaNovaTransacao(String titulo, double valor) {
    final novaTransacao = Transacao(
        id: Random().nextDouble().toString(),
        titulo: titulo,
        valor: valor,
        data: DateTime.now());
    setState(() {
      _transactions.add(novaTransacao);
    });

    Navigator.of(context).pop();
  }

   List<Transacao> get _transacoesRecentes{
    return _transactions.where((tr){
        return tr.data.isAfter(DateTime.now().subtract(Duration(days: 7)));
    }).toList();
 }
  

  _abrirTransacaoModal(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (_) {
          return FormularioDeTransacoes(_adicionaNovaTransacao);
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DespesasApp'),
        backgroundColor: Colors.green[700],
        actions: <Widget>[
          IconButton(
            onPressed: () => _abrirTransacaoModal(context),
            icon: Icon(Icons.add),
            color: Colors.black87,
         ),
        ],
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Grafico(_transactions),
              ListaDeTransacoes(_transacoesRecentes),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _abrirTransacaoModal(context),
        child: Icon(Icons.add,color: Colors.black87),
        backgroundColor: Theme.of(context).colorScheme.secondary,
      ),
     // floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
