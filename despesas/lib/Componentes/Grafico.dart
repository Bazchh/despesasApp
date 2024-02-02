import 'package:despesas/Componentes/BarrasGraf.dart';
import 'package:despesas/Modelos/Transacao.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Grafico extends StatelessWidget {
  final List<Transacao> transacoes;

  Grafico(this.transacoes);

  List<Map<String, Object>> get GrupoDeTransacoes {
    return List.generate(7, (index) {
      final diaDaSemana = DateTime.now().subtract(Duration(days: index));
      double totalSemana = 0.0;

      for(var i = 0; i < transacoes.length;i++){
        bool mesmoDia =transacoes[i].data.day == diaDaSemana.day;
        bool mesmoMes =transacoes[i].data.month == diaDaSemana.month;
        bool mesmoAno =transacoes[i].data.year == diaDaSemana.year;

        if(mesmoDia && mesmoMes && mesmoAno == true){
          totalSemana += transacoes[i].valor;
        }

      }
     
      return {
        'dia': DateFormat.E().format(diaDaSemana)[0],
        'valor': totalSemana,
      };
    });
  }

  @override
  Widget build(BuildContext context) {
    GrupoDeTransacoes;
    return Card(
      elevation: 6,
      margin: EdgeInsets.all(20),
      child: Row(
        children: 
          GrupoDeTransacoes.map((tr){
            return BarrasGraf(label: '${tr['dia']}', valor: double.parse('${tr['valor']}'),percent: 0,);
          }).toList(),      
      ),
    );
  }
}
