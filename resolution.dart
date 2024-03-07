import 'dart:io';

void main() {
  final int choice;

  stdout.write('Insira o número da questão a ser visualizada (1, 2 ou 5): ');
  choice = int.parse(stdin.readLineSync()!);

  switch (choice) {
    case 1:
      question01();
      break;
    case 2:
      question02();
      break;
    case 5:
      question05();
      break;
    default:
      print('Insira um número válido (1, 2 ou 5)');
  }
}

void question01() {
  print('Questão 01:');

  final int index = 13;
  int sum = 0;
  int k = 0;

  while (k < index) {
    k = k + 1;
    sum = sum + k;
  }

  print('O resultado final contido na variável soma é: $sum');
}

void question02() {
  print('Questão 02:');

  final int insertValue;
  int currentValue = 0;
  List<int> fibonacciSequence = [0, 1];
  int index = 1;

  stdout.write('Insira um valor numérico inteiro: ');
  insertValue = int.parse(stdin.readLineSync()!);

  while (currentValue < insertValue) {
    currentValue = fibonacciSequence[index] + fibonacciSequence[index - 1];
    fibonacciSequence.add(currentValue);
    index++;
  }

  if (currentValue == insertValue) {
    print('O número $insertValue pertence a sequência de Fibonacci!');
  } else {
    print('O número $insertValue não pertence a sequência de Fibonacci!');
  }
}

void question05() {
  print('Questão 05');

  final String insertString;
  final List<String> fragmentedString;
  List<String> convertedFragmentedString = [];
  int index = 0;

  stdout.write('Insira a String a ser invertida: ');
  insertString = stdin.readLineSync()!;

  fragmentedString = insertString.split('');
  index = fragmentedString.length - 1;

  while (index >= 0) {
    convertedFragmentedString.add(fragmentedString[index]);
    index--;
  }

  print(
      'A String inserida ficara invertida como: ${convertedFragmentedString.join()}');
}
