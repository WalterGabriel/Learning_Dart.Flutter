import 'package:flutter/material.dart';

void main() {
/*  
1. runaApp é onde será gerada a interface do App na tela do celular;
2. Para adicionar elementos da interface trazidos do arquivo"material.dart" entre o tipo do elemento (no exemplo, Texto), seguido do tipo do dado necessário (String) e sua formatação (textDirection.ltr).
3. Propriedades de formatação são acessadas através dos pontos (.)
*/

/*MaterialAPP:
É uma classe que contém, por padrão, uma série de objetos baseados no Material Design da Google. Ele se trata de um Widget que prepara o terreno para um app baseado no Material Design.*/

/*Scaffold:
É o WidGet que importa todo o visual padrão dos layouts de apps baseados em Material Design*/

/*Dentros dos Widgets existem uma série de propriedades, às vezes com uma declaração obrigatória para seu funcionamento:

- No exemplo abaixo é declarado que o widget ou "tela" de inicio do MaterialApp será o layout Scafoold (comando home:)

- Já dentro do Scafold a propriedade "appBar:"" indica que o barra do layout do app será o widget Appbar() e receberá um "title:".

Na propriedade à seguir o nosso layout (Scaffold) recebe também um botão flutuante: "floatingActionButton: " */

  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Transferências'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
      ),
    ),
  );
}
