import 'dart:io';
import 'package:my_app_firstchallenge/pessoa.dart';

void execute() {
  print('Calculadora de IMC!');

  try {
    stdout.write('Digite seu nome: ');
    String name = stdin.readLineSync()!;

    stdout.write('Digite seu peso em quilogramas: ');
    double weight = double.parse(stdin.readLineSync()!);

    stdout.write('Digite sua altura em metros: ');
    double height = double.parse(stdin.readLineSync()!);

    var pessoa = Pessoa(name, weight, height);
    double imc = pessoa.calculoDoIMC(weight, height);

    print('Nome: ${pessoa.getName()}');
    print('Peso: $weight kg');
    print('Altura: $height m');
    print('IMC: $imc');
    print(pessoa.resultadoGeral(imc));
  } catch (e) {
    print('Erro: $e');
  }
}
