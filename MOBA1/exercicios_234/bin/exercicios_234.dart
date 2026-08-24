void main() {
  questao1Dos23();
}

void questao1Dos23(){
  double saldoCliente = 200;

  if (saldoCliente >= 0){
    print("Saldo do cliente é positivo!!");
  } 
  else{
    print("Saldo do cliente é negativo!!");
  }
}

void questao2Dos23(){
  int notaAluno = 8;

  if (notaAluno >= 7){
    print("aprovado");
  }
  else if (notaAluno >= 5){
    print("exame");
  }
  else {
    print("reprovado");
  }
} 

void questao3Dos23(){
  double peso = 95;
  int idade = 50;

  if (peso >= 50 && idade >= 18 ){
    print("poderá doar sangue");
  }
  else {
    print("Não poderá doar sangue");
  }
}

void questao4Dos23(){
  double ladoA = 12;
  double ladoB = 12;
  double ladoC = 12;

  if (ladoA == ladoB && ladoA == ladoC ){
    print("é equilatero");
  }
  else{
    print("não é equilatero");
  }
}

void questao5Dos23(){
  double valorA = 11;
  double valorB = 11;

  if (valorA > valorB){
    print("valorA é maior");
  }
  else if (valorB > valorA){
    print("valorB é maior");
  }
  else {
    print("os dois são iguais");
  }
}

void questao6Dos23(){
  double valorA = 6;
  double valorB = 6;
  double valorC = 4;

  if (valorA > valorB && valorA > valorC){
    print("valorA é o maior");
  }
  else if (valorB > valorA && valorB > valorC){
    print("valorB é o maior");
  }
  else if(valorC > valorA && valorC > valorB){
    print("valorC é o maior");
  }
  else{
    print("existem valores iguais");
  }

}

void questao7Dos23(){
  double ladoA = 11;
  double ladoB = 12;
  double ladoC = 13;

  if (ladoA == ladoB && ladoA == ladoC){
    print("é equilatero");
  }
  else if(ladoA == ladoB || ladoB == ladoC || ladoA == ladoC ){
    print("é isósceles");
  }
  else{
    print("os três lados são diferentes");
  }
}

void questao1Do4(){
  int i = 100;

  while (i >= 0){
    print(i);
    i--;
  }
}

void questao2Do4(){
  int i = 0;
  while (i <= 100){
    print(i);
    i = i+2;
  }
}

void questao3Do4(){
  int i = 0;
  int som = 3;

  while(i <= 98  ){
    print("$i + $som ");
    i = i + 3;
    som = som + 3;

  }

}

void questao4Do4(){
  int num1 = 4;
  int num2 = 9;
  int resultado = 0;
  int contador = 0;

  while (contador < num2) {
    resultado = resultado + num1;
    contador++;
  }

  print("O resultado é: $resultado");
}
