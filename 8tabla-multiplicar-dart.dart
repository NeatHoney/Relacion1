import 'dart:io';

void main() {
  print('Introduce un número entero entre 1 y 10:');

  // readLineSync() devuelve String? (puede ser null, p. ej. con Ctrl+D),
  // por eso con sound null safety hay que tratarlo como nullable
  String? entrada = stdin.readLineSync();
  int? numero = int.tryParse(entrada ?? '');

  if (numero == null) {
    print('Error: "$entrada" no es un número entero');
    return;
  }
  if (numero < 1 || numero > 10) {
    print('Error: el número debe estar entre 1 y 10');
    return;
  }

  for (int i = 1; i <= 10; i++) {
    print('$numero x $i = ${numero * i}');
  }
}
