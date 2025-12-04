import 'dart:io';

void main() {
  void menu() {
    print("Escolha uma operação");
    print("1 - Soma");
    print("2 - Subtração");
    print("3 - Multiplicação");
    print("4 - Divisão");
    print("5 - Sair");
  } menu();

  int escolha = 0;
  double numeroUm = 0;
  double numeroDois = 0;

  void soma() {
    print(numeroUm + numeroDois);
  }

  void subtracao() {
    print(numeroUm - numeroDois);
  }

  void multiplicacao() {
    print(numeroUm * numeroDois);
  }

  void divisao() {
    print(numeroUm / numeroDois);
  }

    void calcular (escolha) {
    switch (escolha) {
      case 1:
        soma();
        break;
      case 2:
        subtracao();
        break;
      case 3:
        multiplicacao();
        break;
      case 4:
        divisao();
        break;
      case 5:
        print("Saindo...");
        break;
      default:
        print("Opção inválida");
    }
  }

  String? entrada = stdin.readLineSync();
  if (entrada != null) {
    if (entrada != "") {
      escolha = int.parse(entrada);
    }
  }

  entrada = stdin.readLineSync();
  if (entrada != null) {
    if (entrada != "") {
      numeroUm = double.parse(entrada);
    }
  }

  entrada = stdin.readLineSync();
  if (entrada != null) {
    if (entrada != "") {
      numeroDois = double.parse(entrada);
    }
  }
  calcular(escolha);
}
