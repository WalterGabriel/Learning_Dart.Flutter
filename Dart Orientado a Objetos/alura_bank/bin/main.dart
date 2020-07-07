void main() {
  //Chamada da classe conta corrente -> As classes são criadas no fim do código
  /*Caso a variável(class) conta não receba os atributos da classe na declaração "ContaCorrente()" o valor da variável será "null". Dentro dos parentéses o que entra são o atributos da classe. Para que todos os atributos sejam importados basta deixar os parentéses vazios.*/
  //Para acessar os atributos da classe basta escrever o nome da variável seguido de .
  var cC001 = ContaCorrente();
}

//Criação da classe conta corrente.
class ContaCorrente {
  String titular;
  int agencia;
  int conta;
  double saldo = 0.0;
  /*Atribuindo um valor dentro de uma classe esse valor torna-seo valor padrão para todas as instâncias que serão atribuidas. É recomendável inicializar (atribuir) um valor a todas as variáveis de uma classe cujo sabemos qual é o valor padrão inicial. Desta forma, a variável nunca começará com um valor null*/

}
