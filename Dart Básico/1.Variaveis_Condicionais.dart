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
  print("_________Testando Condicionais: _________");

  int idade = 18;

  if (idade >= 18) {
    print("Bem vindo ao reino da putaria, jovem!");
  } else {
    print("Eita jovem, pode não, oh!");
  }
//O Dart abstrai este if tracional da seguinte forma:
  int outra_idade = 17;

  outra_idade >= 18
      ? print("Bem vindo ao reino da putaria, jovem!") // Verdadeiro
      : print("Eita jovem, pode não oh!"); // Falso

/*BOLEANAS: Variáveis boleans permitem verificar diretamente um valor de variável. Ex:*/
  bool maior_de_idade = idade >=
      18; //O programa já varifica se a variável maior_de_idade é V ou F e atribui o valor a booleana.

  if (maior_de_idade) {
    print("Vem comigo jovem! Cola no homem mel.");
  } else {
    print("Calma gafanhoto, se segura nessa mão aí");
  }
}
