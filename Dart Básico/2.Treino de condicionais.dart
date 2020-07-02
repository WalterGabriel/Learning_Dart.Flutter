/*TIPOS DE VARIÁVEIS
  Para declarar a variável basta dizer o tipo da variável em seguida atribur um nome.

  - String
    $ -> incorpora (transtipa) outros tipos de variáveis dentro da string
  
  - Int
  - Double
  - Bool

  ____inferência de tipagem____
  var -> Declara qualquer variável e a linguagem infere o tipo da variável de acordo com o valor atribuido a ela. Após a inferência, o tipo da variável não é modificada.
  
  Dynamic -> Uma variável que aceita qualquer tipo de valor. Mesmo se o valor atribuído tenha seu tipo modificado, o programa se adaptará à nova tipagem.

  OBS: Variáveis do tipo Dynamic faz com que o programa se torna bem mais pesado. Pois ele precisa inferir e verificar esta variáveis sempre frequentemente.
  Declarações do tipo var são mais aconselhaveis, pois simplifica a programação. Porém para uma super otimização, é fortemente recomendado declarar diretamente o tipo da variável, pois desta forma não custo algum computacional para tratar essas variáveis.
*/

/*Transtipagem
  Para transtipar int e double basta utilizar as funções:
  - variável.toInt()
  - variável.toDouble()

  Para transtipar Strings basta ultilizar as funçõeso:
  - int.parse(variável)
  - double.parse(variável)

Ex:

void main() {
  String string_int = "13";

  String string_double = "13.14";

  int numero_int = int.parse(string_int);
  double numero_double = double.parse(string_double);
}


*/

//CONDICIONAIS

void main() {
  print("______TREINO DE CONDICIOINAIS______");
  print("Condicionais com if/else: ");

  //Variáveis
  int idade = 17;
  print("Idade: $idade anos");

  //Condicional inteira
  print("\n Escrevendo condicionais por inteiro: ");
  if (idade >= 18) {
    print("Você tem $idade anos e é maior de idade");
  } else {
    print("Vocë tem $idade anos e é menor de idade");
  }
  //Condional resumida
  print("\n Escrevendo condicionais resumidas: ");
  idade >= 18
      ? print("Você é maior de 18 anos e sua idade é de $idade anos")
      : print("Você é menor de 18 anos e sua idade é de $idade anos");

  //Bolenas
  print("\n Testando boleanas com resumo:");
  bool statusAcesso = idade >= 18;
  if (statusAcesso) {
    print("Pode entrar");
  } else {
    print("Não pode entrar");
  }

  print("\n Testando boleanas sem resumo:");
  statusAcesso == true ? print("Pode entrar") : print("Não pode entrar");
}
