void main() {
  var contaAmanda = ContaCorrente();
  contaAmanda.titular = 'Amanda';
  contaAmanda.saldo = 120.00;
  print('Saldo da ${contaAmanda.titular} é de: R\$ ${contaAmanda.saldo}');
  contaAmanda.saque(220);

  var contaTiago = ContaCorrente();
  contaTiago.titular = 'Tiago';
  contaTiago.saldo = 100.00;
  print('Saldo da ${contaTiago.titular} é de: R\$ ${contaTiago.saldo}');
  contaTiago.saque(220);
}

//Criação da classe conta corrente.
class ContaCorrente {
  String titular;
  int agencia;
  int conta;
  double saldo = 0.0;
  /*CRIANDO MÉTDOS: Métodos são generalizações de funcionalidades dentro das classes que servem para facilitar a manipulação de dados dentro dos objetos uma vez que os objetos criados precisarão ter as propriedades de uma classe manipuladas dentros deles próprios.*/

  // 1 - Declara-se o tipo de uma operação, assim como se declara um tipo de variável, nesse caso, "void" uma operação sem retorno:

  void saque(double valorDoSaque) {
    if (saldo - valorDoSaque < -100) {
      //referência a classe que esta sendo utilizada. Nesse caso, essa mesma classe.
      print('Sem saldo suficiente para realizar o saque de $valorDoSaque seu saque máximo é de ${saldo + 100}');
    } else {
      print('Saque de R\$ $valorDoSaque');
      this.saldo -= valorDoSaque;

      print('Novo saldo da ${titular} é de: R\$ ${saldo}');
    }
  }
}
