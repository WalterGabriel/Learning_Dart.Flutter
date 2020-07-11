import 'package:flutter/material.dart';

void main() {

/*  
1. runaApp é onde será gerada a interface do App na tela do celular;
2. Para adicionar elementos da interface trazidos do arquivo"material.dart" entre o tipo do elemento (no exemplo Texto), seguido do tipo do dado necessário (String) e sua formatação (textDirection.ltr).
3. Propriedades de formatação são acessadas através dos pontos (.)*/

  runApp(Text('Bem vindo ao Flutter Bank',textDirection: TextDirection.ltr,));
  print('Hello Flutter');
}
