import 'package:bank/models/transferencia.dart';
import 'package:bank/screens/transferencia/formulario.dart';
import 'package:flutter/material.dart';

const _tituloAppBar = 'Transferências';

class ListaTransferencia extends StatefulWidget {
  /* 
    ListView é um widget diferente do colunm, pois nessa lista é gerada uma função de scroll
  Para que a list view se torne dinâmica é necessário utilizar um builder.
  Desta forma, o children é a concatenação de elementos estáticos. Neste caso, não precisaremos dele, pois, neste app, a intesão é criar um histórico de transferència que se atualiza dinamicamente.
  
  Para isso, é criada uma lista que funcionará como uma font on meu widget vai buscar as informações para serem atualizadas.*/
  final List<Transferencia> _transferencias = List();

  @override
  State<StatefulWidget> createState() {
    return ListaTransferenciasState();
  }
}

class ListaTransferenciasState extends State<ListaTransferencia> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_tituloAppBar),
      ),
      body: ListView.builder(
        itemCount: widget._transferencias
            .length, //Informa ao ListView o número de itens da lista,
        itemBuilder: (context, indice) {
          //Cria os itens da lista importando as transferências
          final transferencia = widget._transferencias[indice];
          return ItemTransferencia(transferencia);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          /*
          Future é uma função destinada para recolher informações depois da entrada de dados
           */
              Navigator.push(context, MaterialPageRoute(builder: (context) {
            return FormularioTransferencia();
          })).then((transferenciaRecebida) {

              _atualiza(transferenciaRecebida);
          
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }

  void _atualiza(Transferencia transferenciaRecebida) {
    if (transferenciaRecebida != null) {
      setState(() {
        widget._transferencias.add(transferenciaRecebida);
      });
    }
  }
}

// Refatorando Cards:

class ItemTransferencia extends StatelessWidget {
  //Criando construtores para receber valores para os parâmetros da função:
  //Criação de constantes (final) do tipo String
  final Transferencia _transferencia;

  ItemTransferencia(this._transferencia);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.monetization_on),
        title: Text(
            'Depositar R\$ ${_transferencia.valor}'), //aplica-se dentro dos valores a constante.
        subtitle: Text('Na conta: ${_transferencia.numeroConta}'),
      ),
    );
  }
}
