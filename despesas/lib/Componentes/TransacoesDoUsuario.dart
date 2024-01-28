import 'package:despesas/Componentes/ListaDeTransacoes.dart';
import 'package:despesas/Modelos/Transacao.dart';
import 'package:flutter/material.dart';

import 'FormularioDeTransacoes.dart';

class TransacoesDoUsuario extends StatefulWidget {
  @override
  State<TransacoesDoUsuario> createState() => _TransacoesDoUsuarioState();
}

class _TransacoesDoUsuarioState extends State<TransacoesDoUsuario> {
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
    return Column(
      children: <Widget>[
        ListaDeTransacoes(_transacoes),
        FormularioDeTransacoes()
      ],
    );
  }
}
