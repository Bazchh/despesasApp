import 'dart:math';

import 'package:despesas/Componentes/ListaDeTransacoes.dart';
import 'package:despesas/Modelos/Transacao.dart';
import 'package:flutter/material.dart';

import 'FormularioDeTransacoes.dart';

class TransacoesDoUsuario extends StatefulWidget {
  @override
  State<TransacoesDoUsuario> createState() => _TransacoesDoUsuarioState();
}

class _TransacoesDoUsuarioState extends State<TransacoesDoUsuario> {
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
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        FormularioDeTransacoes(_adicionaNovaTransacao),
        ListaDeTransacoes(_transactions),
      ],
    );
  }
}
