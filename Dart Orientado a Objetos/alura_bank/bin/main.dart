/* COMPOSIÇÃO DE CLASSES:
  1 -  Uma pode utilizar outras como uma propriedade.*/

void main() {
  var conta001 = ContaCorrente();

  // ignore: omit_local_variable_types
  Cliente amanda = Cliente();
  amanda.nome = 'Amanda';
  amanda.cpf = '098.344.890-45';
  amanda.profissao = 'Programadora';

  conta001.titular = amanda;

  print('Titular: ${conta001.titular.nome}');
  print('CPF: ${conta001.titular.cpf}');
  print('Profissão: ${conta001.titular.profissao}');
}

//Criação classe cliente
class Cliente {
  String nome;
  String cpf;
  String profissao;
}

//Criação da classe conta corrente.
class ContaCorrente {
  Cliente titular;
  int agencia;
  int conta;
  double saldo = 0.0;
  double chequeEspecial = -100.00;

//Método saque
  void saque(double valorDoSaque) {
    if (saldo - valorDoSaque < -100) {
      print(
          'Sem saldo suficiente para realizar o saque de $valorDoSaque seu saque máximo é de ${saldo + 100}');
    } else {
      print('Saque de R\$ $valorDoSaque');
      saldo -= valorDoSaque;

      print('Novo saldo da ${titular} é de: R\$ ${saldo}');
    }
  }

//Método deposito
  double deposito(double valorDoDeposito) {
    saldo += valorDoDeposito;
    return saldo;
  }
}
