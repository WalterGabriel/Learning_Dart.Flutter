import 'package:flutter/material.dart';

void main() {
  /*  
  1. runaApp é onde será gerada a interface do App na tela do celular;
  2. Para adicionar elementos da interface trazidos do framework insira o nome da classe, ou seja, Widgets como MaterialApp, seguido do tipo de dado necessário (String) e sua formatação (textDirection.ltr).
  3. Propriedades de formatação são acessadas através dos pontos (.)
  */

  /*MaterialAPP:
  É uma classe que contém, por padrão, uma série de objetos baseados no Material Design da Google. Ele se trata de um Widget que prepara o terreno para um app baseado no Material Design.*/

  /*
  Scaffold:
  É o WidGet que importa todo o visual padrão dos layouts de apps baseados em Material Design

  Dentros dos Widgets existem uma série de propriedades, às vezes com uma declaração obrigatória para seu funcionamento:

  - No exemplo abaixo é declarado que o widget ou "tela" de inicio do MaterialApp será o layout Scafoold (comando home:)

  - Já dentro do Scafold a propriedade "appBar:"" indica que o barra do layout do app será o widget Appbar() e receberá um "title:".

  Na propriedade à seguir o nosso layout (Scaffold) recebe também um botão flutuante: "floatingActionButton: " 
  */

  runApp(BytebankApp());
}

class BytebankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: FormularioTransferencia(),
      ),
    );
  }
}

class FormularioTransferencia extends StatelessWidget {
  final TextEditingController _controladorCampoNumeroConta =
      TextEditingController();
  final TextEditingController _controladorCampoValor = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Criar AppBar'),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _controladorCampoNumeroConta,
              style: TextStyle(fontSize: 16.0),
              decoration: InputDecoration(
                  labelText: 'Número da conta', hintText: 'XXX.XXX.XX'),
              keyboardType: TextInputType.number,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _controladorCampoValor,
              style: TextStyle(fontSize: 16.0),
              decoration: InputDecoration(
                  icon: Icon(Icons.monetization_on),
                  labelText: 'Valor',
                  hintText: '0.00'),
              keyboardType: TextInputType.number,
            ),
          ),
          RaisedButton(
            onPressed: () {
              debugPrint('Toque no confirmar');
              final int numeroConta =
                  int.tryParse(_controladorCampoNumeroConta.text);
              final double valor = double.tryParse(_controladorCampoValor.text);

              if (numeroConta != null && valor != null) {
                final transferenciaCriada = Transferencia(valor, numeroConta);
                debugPrint('${transferenciaCriada.valor}');
                debugPrint('${transferenciaCriada.numeroConta}');
                Scaffold.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                        'R\$ ${transferenciaCriada.valor} transferidos para ${transferenciaCriada.numeroConta} '),
                  ),
                );
              }
            },
            child: Text('Confirmar'),
          )
        ],
      ),
    );
  }
}

/* 

Refatoramento de código:
  - Podemos criar classes compostas de vários elementos e transforma-los em um Widget,
  para isso, declara-se a classe e em seguida utilizamos o comando extends para transformar a classe num Widget. Depois disso, sobrecreve-se o método build.
  
  - Existem três maneiras de criar um Widget:
  - Widget: Criação de Widgets de baixo nível, composto por elementos básicos da linguagem.
  Para quem faz um Widget do zero.

  - StatelessWidget: Referência para criação de Widget compostos por outros Widgets do framework, funciona como uma criação de grupo, encapsulamento de widgets. Nesse caso, um vez que um widget é criado, suas propriedades são imutáveis durante a execução do app.

  - StatefulWidget: Funciona semelhante ao Stateless, porém com a diferença de que é possível modificar dinamicamente o conteúdo de um Widget dinamicamente. Por exemplo, eventos que ocorrem num applicativo podem transformar as propriedades dentro dele.

*/
class ListaTransferencia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transferências'),
      ),
      body: Column(
        children: <Widget>[
          ItemTransferencia(Transferencia(100.0, 064)),
          ItemTransferencia(Transferencia(200.0, 520)),
          ItemTransferencia(Transferencia(300.0, 520)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}

/*
Como os widgets que criamos são classes, podemos criar parâmetros para às funções e entrar valores diferentes para cada vez que os componentes forem usados.

Exemplo: 
*/

/*Afim de melhorar o código, criaremos uma classe para receber os valores e números das contas que entraram nos Cards. Isso fara com que os valores de entrada sejam sejam do tipo do numérico e os botões strings*/

class Transferencia {
  final double valor;
  final int numeroConta;

  Transferencia(this.valor, this.numeroConta);
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
