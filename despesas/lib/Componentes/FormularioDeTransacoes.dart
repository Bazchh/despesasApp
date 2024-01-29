import 'package:flutter/material.dart';

class FormularioDeTransacoes extends StatelessWidget {
  final controladorTitulo = TextEditingController();
  final controladorValor = TextEditingController();

  final void Function(String, double) onSubmit;

  FormularioDeTransacoes(this.onSubmit);

  _submitForm() {
    final titulo = controladorTitulo.text;
    final valor = double.tryParse(controladorValor.text) ?? 0.0;
    if(titulo.isEmpty || valor <= 0){
      return;
    }
    onSubmit(titulo, valor);
  }

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
              decoration: InputDecoration(labelText: 'Titulo da transação'),
            ),
            TextField(
              controller: controladorValor,
              decoration: InputDecoration(labelText: 'Valor (R\$)'),
              keyboardType: TextInputType.numberWithOptions(decimal: true),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () => _submitForm(),
                  child: Text('Nova transação',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.purple)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
