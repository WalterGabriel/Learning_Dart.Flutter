/* LAÇOS DE REPETIÇÃO ANINHADOS:
Um loop dentro de outro é compreendido em etapas onde o loop externo (primeira tarefa) continuará apenas após o fim do loop externo (segunda etapa).
1.1
1.2
1.3...

2.1
2.2
2.3...

3.1...*/

void main() {
  for (int multiplicando = 1; multiplicando <= 10; multiplicando++) {
    print(" ");
    for (int contador = 2; contador <= 10; contador++) {
      /*
      int resultado = multiplicando * contador;
      print("$multiplicando * $contador = $resultado");
      Variável resultado nem precisa estar aqui*/
      print(
          "$multiplicando * $contador = ${multiplicando * contador}"); //Com as chaves eu posso aplicar uma expressão inteira dentro da string.
    }
  }

  print("\nSoma de todos os fatoriais entre 1 e 15");
// Soma de todos os fatoriais entre 1 e 15
  int soma = 0;
  int fatorial = 1;

  for (int i = 1; i <= 15; i++) {
    fatorial *= i; //fatorial = fatorial * i (1..2..3..4)
    soma += fatorial; //soma = soma + fatorial
    print("$fatorial");
  }

  print("Resultado dos fatoriais entre 1 e 15 é $soma");

/*BREAK:
A função break pára o loop mais próximo segundo uma determinada condição.*/
  print(" #### Break #### ");

  for (int contador = 0;; contador++) {
    print(contador);

    if (contador == 120) {
      print("Fim da contadem até $contador");
      break;
    }
  }
}
