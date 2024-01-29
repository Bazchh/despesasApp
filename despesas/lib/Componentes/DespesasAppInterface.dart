import 'package:despesas/Componentes/TransacoesDoUsuario.dart';
import 'package:flutter/material.dart';

class DespesasAppInterface extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
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
      ),
    );
  }
}