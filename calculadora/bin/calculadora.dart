import 'dart:io';

void main() {
  void menu() {
    print("Escolha uma operação");
    print("1 - Soma");
    print("2 - Subtração");
    print("3 - Multiplicação");
    print("4 - Divisão");
    print("5 - Sair");
  }
  menu();
  
  int escolha = int.parse(stdin.readLineSync()!);
  double numeroUm = double.parse(stdin.readLineSync()!);
  double numeroDois = double.parse(stdin.readLineSync()!);

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
