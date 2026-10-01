import 'dart:io';

void main() {
  print('Introduce el primer número entero:');
  int? numero1 = int.tryParse(stdin.readLineSync() ?? '');

  print('Introduce el segundo número entero:');
  int? numero2 = int.tryParse(stdin.readLineSync() ?? '');

  if (numero1 == null || numero2 == null) {
    print('Error: los valores introducidos no son números enteros');
    return;
  }

  print('Introduce el operador (+, -, *, /, %):');
  String operador = stdin.readLineSync() ?? '';

  if ((operador == '/' || operador == '%') && numero2 == 0) {
    print('Error: no se puede dividir entre cero');
    return;
  }

  switch (operador) {
    case '+':
      print('Resultado: ${numero1 + numero2}');
      break;
    case '-':
      print('Resultado: ${numero1 - numero2}');
      break;
    case '*':
      print('Resultado: ${numero1 * numero2}');
      break;
    case '/':
      print('Resultado: ${numero1 ~/ numero2}');
      break;
    case '%':
      print('Resultado: ${numero1 % numero2}');
      break;
    default:
      print('Operador no reconocido');
  }
}
