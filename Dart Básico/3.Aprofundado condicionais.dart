void main() {
  print("___APROFUNDANDO CONDICIONAIS___\n");
  /*
  && -> and
  || -> or
  */

/*
1.EXERCÍCIO:
Entrada permitida apenas para maiores de 16 anos ou maiores de 10 acompanhados pelos pais:
*/
  print("EXERCÍCIO 1 -> Simplificando Ifs");
  //Variáveis de base
  int idade = 16;
  print("Idade: $idade anos");

  bool acompanhado = false;
  print("Acompanhado: $acompanhado \n");

  //Simplifique o código:
  print("Código bagunçado: ");

  if (idade >= 16) {
    print("Pode entrar");
  } else {
    if (idade >= 10) {
      if (acompanhado) {
        //if tem valor bool padrão VERDADEIRO
        print("Pode entrar");
      } else {
        print("NÃO pode entrar");
      }
    } else {
      print("Não pode entrar");
    }
  }

//Resposta:
  print("Código simplificado: ");

  if (idade >= 16 || idade >= 10 && acompanhado) {
    print("PODE ENTRAR");
  } else {
    print("NÃO PODE ENTRAR\n");
  }

/*
2. EXERCÍCIO:
Verificar se é vogal ou consoante
*/
  print("EXERCÍCIO 2 -> Vogais ou Consoantes");

  String letra = "h";

  if (letra == "a" ||
      letra == "e" ||
      letra == "i" ||
      letra == "o" ||
      letra == "u") {
    print("A letra '$letra' é uma vogal");
  } else {
    print("A letra '$letra' é uma consoante\n");
  }
}
