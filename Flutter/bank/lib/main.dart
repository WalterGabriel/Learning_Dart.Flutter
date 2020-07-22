import 'package:bank/screens/transferencia/lista.dart';
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
      theme: ThemeData(
        primaryColor: Colors.lightGreen[700],
        accentColor: Colors.yellowAccent[700],
        buttonTheme: ButtonThemeData(
            buttonColor: Colors.lightGreenAccent[700],
            textTheme: ButtonTextTheme.primary),
      ),
      home: ListaTransferencia(),
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

/*
Como os widgets que criamos são classes, podemos criar parâmetros para às funções e entrar valores diferentes para cada vez que os componentes forem usados.

Exemplo: 
*/

/*Afim de melhorar o código, criaremos uma classe para receber os valores e números das contas que entraram nos Cards. Isso fara com que os valores de entrada sejam sejam do tipo do numérico e os botões strings*/
