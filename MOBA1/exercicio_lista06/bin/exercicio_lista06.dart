
void main() {
  Exercicio07();
}

void Exercicio01() {
  List<int> numeros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  for ( int i = numeros.length - 1; i >= 0; i--) {
    print(numeros[i] );
  }
}

void Exercicio02() {
  List<String> nomes = ['Alfredo', 'Afonso', 'Abner', 'Augusto'];

  print('${nomes[0]}\n${nomes[nomes.length - 1]}');
}

void Exercicio03() {
  List<int> numeros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  for (int numero in numeros){
    if (numero % 2 == 0){
      print(numero);
    }
  }
}

void Exercicio04(){
  List<int> numeros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  int soma = 0;
  for (int numero in numeros){
    soma += numero;
  }
  double media = soma / numeros.length;
  print(media);
}

void Exercicio05(){
  List<int> numeros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  List<int> dobro = [];

  for ( int numero in numeros){
    dobro.add(numero * 2);
  }
  print(dobro);
}

void Exercicio06(){
  List<int> numeros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  int menor = numeros[0];
  for ( int numero in numeros){
    if(numero < menor){
    menor = numero;
    }
  }
  print(menor);
}

void Exercicio07(){
  List<String> nomes = ['Breno', 'Benjamim', 'Bartolomeu', 'Bruno'];
  List<String> semon = [];

  for (int i = nomes.length - 1; i >= 0; i--){
    semon.add(nomes[i]);
  }
  print(semon);
}