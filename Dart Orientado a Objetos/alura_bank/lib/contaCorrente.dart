import 'cliente.dart';

class ContaCorrente {
  Cliente titular;
  int agencia;
  int conta;
  double _saldo = 0.0;
  double chequeEspecial = -100.00;

//Método saque
  void saque(double valorDoSaque) {
    if (_saldo - valorDoSaque < -100) {
      print(
          'Sem _saldo suficiente para realizar o saque de $valorDoSaque seu saque máximo é de ${_saldo + 100}');
    } else {
      print('Saque de R\$ $valorDoSaque');
      _saldo -= valorDoSaque;

      print('Novo _saldo da ${titular} é de: R\$ ${_saldo}');
    }
  }

//Método deposito
  double deposito(double valorDoDeposito) {
    _saldo += valorDoDeposito;
    return _saldo;
  }
}