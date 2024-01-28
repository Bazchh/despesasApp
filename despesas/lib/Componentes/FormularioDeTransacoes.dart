import 'package:flutter/material.dart';

class FormularioDeTransacoes extends StatelessWidget {
  final controladorTitulo = TextEditingController();
  final controladorValor = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Card(
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
          );
  }
}