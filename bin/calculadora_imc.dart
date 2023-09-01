import 'dart:convert';
import 'dart:io';

double calcularImc(double altura, double peso) {
  return peso / (altura * altura);
}

void main(List<String> arguments) {
  print('Bem-vindo à Calculadora IMC');

  print('Informe a sua altura: Ex: 1.80');
  var input = stdin.readLineSync(encoding: utf8);
  var altura = double.parse(input ?? "0");

  print('Informe o seu peso: Ex: 80');
  input = stdin.readLineSync(encoding: utf8);
  var peso = double.parse(input ?? "0");

  double imc = calcularImc(altura, peso);
  String imcFormatado = imc.toStringAsFixed(2);

  print('Seu IMC é: $imcFormatado kg/m²');

  if (imc < 16.0) {
    print('Classificação: Magreza pesada');
  } else if (imc < 17.0) {
    print('Classificação: Magreza moderada');
  } else if (imc < 18.5) {
    print('Classificação: Magreza leve');
  } else if (imc < 24.9) {
    print('Classificação: Normal');
  } else if (imc < 29.9) {
    print('Classificação: Sobrepeso');
  } else if (imc < 34.9) {
    print('Classificação: Obesidade classe I');
  } else if (imc < 39.9) {
    print('Classificação: Obesidade classe II');
  } else {
    print('Classificação: Obesidade classe III');
  }
}
