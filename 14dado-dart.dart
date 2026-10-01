import 'dart:math';

void main() {
  Random random = Random();
  // nextInt(6) devuelve un valor entre 0 y 5
  int dado = random.nextInt(6) + 1;
  print('Ha salido un $dado');
}
