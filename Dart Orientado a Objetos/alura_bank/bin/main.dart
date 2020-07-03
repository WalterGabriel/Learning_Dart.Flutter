void main() {
  //Chamada da classe conta corrente -> As classes são criadas no fim do código
  /*Caso a variável(class) conta não receba os atributos da classe na declaração "ContaCorrente()" o valor da variável será "null". Dentro dos parentéses o que entra são o atributos da classe. Para que todos os atributos sejam importados basta deixar os parentéses vazios.*/
  //Para acessar os atributos da classe basta escrever o nome da variável seguido de .
  var cC001 = ContaCorrente();
  cC001.titular = 'Amanda';
  cC001.agencia = 123;
  cC001.conta = 1234;
  print('Titular cC001\n${cC001.titular}');
  print('Nº da agência: ${cC001.agencia}');
  print('Nº da conta: ${cC001.conta}');
  print('Saldo disponível: ${cC001.saldo}');

/* Classes com atributos identicos não quer dizer classes igauis. Pois os objetos (Classes) não as mesmas. É como ter duas facas identicas, mas elas não são as mesmas. Exemplo.:*/
  var cC002 = ContaCorrente(); //Atribuimos os mesmos valores
  cC002.titular = 'Amanda';
  cC002.agencia = 123;
  cC002.conta = 1234;

  //Comparamos:
  print('A igualdade entre cC001 e cC002 é: ${cC001 == cC002}');

  /*Porém as propriedades podem ser analisadas normalmente normalmente com .*atributo desejado**/
  print('\nA igualdade entre os atributos do cC001 e cC002 são:');
  print(
      'Titular: ${cC001.titular == cC002.titular} \nAgência: ${cC001.agencia == cC002.agencia} \nConta: ${cC001.conta == cC002.conta} \nSaldo: ${cC001.saldo == cC002.saldo}');

  /* 1 -  HASHCODE:
  Hashcode é um atributo de identificação que é criado automaticamente para cada objeto de uma classe no momento da execução do código. Como uma ID, hashcodes não são visíveis no código, mas podem ser inspecionados através do atributo .hashCode. Ex:*/
  print('\nHash Code cC001: ${cC001.hashCode}');
  print('Hash Code cC002: ${cC002.hashCode}\n');

  /* 2-  "Merge de um objeto:
  Podemos juntar dois objetos atribuindo um ao outro como fazemos com qualquer variável. ex:*/

  cC001 = cC002;
  print("APÓS MERGE");
  print('Hash Code cC001: ${cC001.hashCode}');
  print('Hash Code cC002: ${cC002.hashCode}');
}

//Criação da classe conta corrente.
class ContaCorrente {
  String titular;
  int agencia;
  int conta;
  double saldo = 0.0;
  /*Atribuindo um valor dentro de uma classe esse valor torna-seo valor padrão para todas as instâncias que serão atribuidas. É recomendável inicializar (atribuir) um valor a todas as variáveis de uma classe cujo sabemos qual é o valor padrão inicial. Desta forma, a variável nunca começará com um valor null*/

}
