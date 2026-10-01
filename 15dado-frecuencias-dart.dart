import 'dart:math';

void main() {
  Random random = Random();
  int n = 6000; // número de lanzamientos

  // frecuencias[1] cuenta los 1, frecuencias[2] los 2... (la posición 0 no se usa)
  List<int> frecuencias = [0, 0, 0, 0, 0, 0, 0];

  for (int i = 0; i < n; i++) {
    int dado = random.nextInt(6) + 1;
    frecuencias[dado]++;
  }

  print('--- Dado normal ---');
  for (int cara = 1; cara <= 6; cara++) {
    print('$cara: ${frecuencias[cara]} veces');
  }

  // Dado trucado: para que el 6 salga 3 veces más, lo hacemos salir en
  // 3 de las 8 posibilidades (los números 6, 7 y 8 se convierten en 6)
  frecuencias = [0, 0, 0, 0, 0, 0, 0];

  for (int i = 0; i < n; i++) {
    int dado = random.nextInt(8) + 1;
    if (dado > 5) {
      dado = 6;
    }
    frecuencias[dado]++;
  }

  print('--- Dado trucado ---');
  for (int cara = 1; cara <= 6; cara++) {
    print('$cara: ${frecuencias[cara]} veces');
  }
}
