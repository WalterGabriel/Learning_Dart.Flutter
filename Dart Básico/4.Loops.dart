void main() {
//LOOP WHILE
  print(
      "Loops:\n#### WHILE ####\n Verifica uma condição e realiza o processo enquanto essa for verdadeira");

  int contador = 1;

  while (contador <= 10) {
    // Enquanto contador for direfente de 10
    print(contador);
    contador += 1; // ++ ou += somam +1 no valor

  }

  print("Fim do WHILE\n");

//LOOP DO WHILE
  contador = 1;

  print(
      "#### DO WHILE ####\n Realiza primeiro um processo e verifica se as condições são verdeiras afim de continua-lo ou não");
  do {
    print(contador);
    contador += 1;
  } while (contador <= 10);
  print("Fim do Do While\n");

/*LOOP FOR -> Variáveis podem ser criadas diretamente dentro do condicional, porém ela será uma variável apenas dentro da função.  */
  print(
      "#### FOR ####\n Usa uma variável ; verifica uma condição ; realiza um processo");

  for (int contadorFor = 0; contadorFor <= 10; contadorFor++) {
    print(contadorFor);
  }
  print("Fim do FOR");
}
