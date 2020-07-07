/*IMPORTAÇÃO DE CLASSES:
  Nesta etapa as classes criadas anteriormente para compor nosso programa foram separadas do arquivo principal do código. Na pasta lib, então, existem dois arquivos responsáveis por conter as classes Cliente e ContaCorrente. Mas para que o programa possa continuar utilizando as informações contidas nessas classes, precisamos indicar no código principal a importações dos arquivos referentes a elas:*/

import 'package:alura_bank/cliente.dart';
import 'package:alura_bank/contaCorrente.dart';

void main() {
  // ignore: omit_local_variable_types
  ContaCorrente conta001 = ContaCorrente();

  // ignore: omit_local_variable_types
  Cliente amanda = Cliente();
  amanda.nome = 'Amanda';
  amanda.cpf = '098.344.890-45';
  amanda.profissao = 'Programadora';
  conta001.titular = amanda;

  print('Titular: ${conta001.titular.nome}');
  print('CPF: ${conta001.titular.cpf}');
  print('Profissão: ${conta001.titular.profissao}');

//Podemos acessar campos em cascata com as propriedades de uma classe:

// ignore: omit_local_variable_types
  ContaCorrente conta002 = ContaCorrente();

// ignore: omit_local_variable_types
  Cliente tiago = Cliente()
    ..nome = 'Tiago'
    ..cpf = '345.634.346-54'
    ..profissao = 'Designer';

  conta002.titular = tiago;

  print('Titular: ${conta002.titular.nome}');
  print('CPF: ${conta002.titular.cpf}');
  print('Profissão: ${conta002.titular.profissao}');
}
