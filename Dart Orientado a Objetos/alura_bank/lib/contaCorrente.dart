import 'cliente.dart';

class ContaCorrente {
  Cliente titular;
  int agencia;
  int conta;
  double _saldo = 0.0;
  double chequeEspecial = -100.00;

  //Método Verificação de Saldo
  bool verificarSaldo(double valor) {
    if (_saldo - valor < chequeEspecial) {
      print('Sem saldo suficiente');
      return false;
    } else {
      print('Movimentando R\$ $valor');
      return true;
    }
  }

//Método Transferência
  bool transferencia(valorTransferencia, ContaCorrente contaDestino) {
    if (!verificarSaldo(valorTransferencia)) {
      print(
          'Não há fundos suficientes para realizar a transferência, valor máximo da transferência: R\$ ${_saldo - chequeEspecial}');
      return false;
    } else {
      _saldo -= valorTransferencia;
      contaDestino.deposito(valorTransferencia);
      return true;
    }
  }

//Método saque
  bool saque(double valorDoSaque) {
    if (!verificarSaldo(valorDoSaque)) {
      print(
          'Sem _saldo suficiente para realizar o saque de $valorDoSaque seu saque máximo é de ${_saldo + 100}');
      return false;
    } else {
      print('Saque de R\$ $valorDoSaque');
      _saldo -= valorDoSaque;
      print('Novo _saldo da ${titular} é de: R\$ ${_saldo}');
      return true;
    }
  }

//Método deposito
  double deposito(double valorDoDeposito) {
    _saldo += valorDoDeposito;
    return _saldo;
  }

//Definição de NovoSaldo
  void definirSaldo(double novoSaldo) {
    if (novoSaldo >= chequeEspecial) {
      _saldo = novoSaldo;
    } else {
      print("Erro, Saldo menor que o cheque especial");
    }
  }

//Obtenção de Saldo
  double obterSaldo() {
    return _saldo;
  }
}
