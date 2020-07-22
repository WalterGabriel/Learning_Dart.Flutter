import 'package:bank/components/editor.dart';
import 'package:bank/models/transferencia.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

const _tituloAppbar = 'Criando Transferência';
const _rotuloCarmpoValor = 'Valor';
const _dicaCamporValor = '0.00';
const _rotuloCampoNumeroCota = 'Número da Conta';
const _dicaCampoNumeroConta = '0000';
const _textoBotaoConfirmar = 'Confirmar';


class FormularioTransferencia extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FormularioTransferenciaState();
  }
}

class FormularioTransferenciaState extends State<FormularioTransferencia> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_tituloAppbar),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Editor(
                controlador: _controladorCampoNumeroConta,
                dica: _dicaCampoNumeroConta,
                rotulo: _rotuloCampoNumeroCota),
            Editor(
                controlador: _controladorCampoValor,
                dica: _dicaCamporValor,
                rotulo: _rotuloCarmpoValor,
                icone: Icons.monetization_on),
            RaisedButton(
              onPressed: () {
                _criaTransferencia(context);
              },
              child: Text(_textoBotaoConfirmar),
            )
          ],
        ),
      ),
    );
  }

  final TextEditingController _controladorCampoNumeroConta =
      TextEditingController();
  final TextEditingController _controladorCampoValor = TextEditingController();

  void _criaTransferencia(BuildContext context) {
    final int numeroConta = int.tryParse(_controladorCampoNumeroConta.text);
    final double valor = double.tryParse(_controladorCampoValor.text);

    if (numeroConta != null && valor != null) {
      final transferenciaCriada = Transferencia(valor, numeroConta);
      Navigator.pop(context, transferenciaCriada);
      Scaffold.of(context).showSnackBar(
        SnackBar(
          content: Text(
              'R\$ ${transferenciaCriada.valor} transferidos para ${transferenciaCriada.numeroConta} '),
        ),
      );
    }
  }
}
