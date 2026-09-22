void main() {
  Exercicio06();
}

void Exercicio01() {
  Map<String, String> Estados = {
    'ES': "Espírito Santo",
    'MG': "Minas Gerais",
    'RJ': "Rio de Janeiro",
    'SP': "São Paulo",
  };
}

void Exercicio02() {
  Map<String, String> Estados = {
    'ES': "Espírito Santo",
    'MG': "Minas Gerais",
    'RJ': "Rio de Janeiro",
    'SP': "São Paulo",
  };

  print(Estados['ES']);
}

void Exercicio03() {
  Map<String, String> Estados = {
    'ES': "Espírito Santo",
    'MG': "Minas Gerais",
    'RJ': "Rio de Janeiro",
    'SP': "São Paulo",
  };
  for (var sigla in Estados.keys) {
    print("${sigla}");
  }
}

void Exercicio04() {
  Map<String, String> Estados = {
    'ES': "Espírito Santo",
    'MG': "Minas Gerais",
    'RJ': "Rio de Janeiro",
    'SP': "São Paulo",
  };
  for (var sigla in Estados.entries) {
    print("${sigla.key}: ${sigla.value}");
  }
}

void Exercicio05() {
  Map<String, String> Filmes = {
    'titulo': "Taxi Driver",
    'ano': "1976",
    'genero': "Crime, Drama",
  };
  for (var filme in Filmes.entries) {
    print("${filme.key}: ${filme.value}");
  }
  }

void Exercicio06() {
  Map<String, String> Filmes = {
    'titulo': "Taxi Driver",
    'ano': "1976",
    'genero': "Crime, Drama",
  };

  Filmes['titulo'] = "As Vantagens de Ser Invisível";
    for (var filme in Filmes.entries) {
    print("${filme.key}: ${filme.value}");
  }
}