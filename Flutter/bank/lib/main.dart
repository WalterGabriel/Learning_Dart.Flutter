import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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
        body: ListaTransferencia(),
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
        title: Text('Transferir Dinheiro'),
      ),
      body: Column(
        children: <Widget>[
          Editor(
              controlador: _controladorCampoNumeroConta,
              dica: 'Número da conta',
              rotulo: 'XXX.XXX.XXX'),
          Editor(
              controlador: _controladorCampoValor,
              dica: 'Valor',
              rotulo: '0.00',
              icone: Icons.monetization_on),
          RaisedButton(
            onPressed: () {
              _criaTransferencia(context);
            },
            child: Text('Confirmar'),
          )
        ],
      ),
    );
  }

  void _criaTransferencia(BuildContext context) {
    final int numeroConta = int.tryParse(_controladorCampoNumeroConta.text);
    final double valor = double.tryParse(_controladorCampoValor.text);

    if (numeroConta != null && valor != null) {
      final transferenciaCriada = Transferencia(valor, numeroConta);
      debugPrint('$transferenciaCriada');
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

class Editor extends StatelessWidget {
  final TextEditingController controlador;
  final String rotulo;
  final String dica;
  final IconData icone;

  Editor({this.controlador, this.rotulo, this.dica, this.icone});
  //Quando um construtor recebe {} quer dizer que os parâmetros dentro das chaves são opcionais, dentro da classe, porém, esses parâmetros devem ser públicos.

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        controller: controlador,
        style: TextStyle(fontSize: 16.0),
        decoration: InputDecoration(
          icon: icone != null ? Icon(icone) : null,
          labelText: rotulo,
          hintText: dica,
        ),
        keyboardType: TextInputType.number,
      ),
    );
  }
}

class ListaTransferencia extends StatelessWidget {
  /* 
    ListView é um widget diferente do colunm, pois nessa lista é gerada uma função de scroll
  Para que a list view se torne dinâmica é necessário utilizar um builder.
  Desta forma, o children é a concatenação de elementos estáticos. Neste caso, não precisaremos dele, pois, neste app, a intesão é criar um histórico de transferència que se atualiza dinamicamente.
  
  Para isso, é criada uma lista que funcionará como uma font on meu widget vai buscar as informações para serem atualizadas.*/
  final List<Transferencia> _transferencias = List();

  @override
  Widget build(BuildContext context) {

    _transferencias.add(Transferencia(100.0, 10000));

    return Scaffold(
      appBar: AppBar(
        title: Text('Transferências'),
      ),
      body: ListView.builder(
        itemCount: _transferencias
            .length, //Informa ao ListView o número de itens da lista,
        itemBuilder: (context, indice) {
          //Cria os itens da lista importando as transferências
          final transferencia = _transferencias[indice];
          return ItemTransferencia(transferencia);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          /*
          Future é uma função destinada para recolher informações depois da entrada de dados
           */
          final Future<Transferencia> future =
              Navigator.push(context, MaterialPageRoute(builder: (context) {
            return FormularioTransferencia();
          }));
          future.then((transferenciaRecebida) {
            debugPrint('Chegou no then do future');
            debugPrint('${transferenciaRecebida.valor}');
            debugPrint('${transferenciaRecebida.numeroConta}');
            _transferencias.add(transferenciaRecebida);
          });
        },
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
