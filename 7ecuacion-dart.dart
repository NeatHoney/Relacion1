import 'dart:math';

void main() {
  double a = 1.0;
  double b = -3.0;
  double c = 2.0;

  double discriminante = b * b - 4 * a * c;

  if (discriminante < 0) {
    print('La ecuación no tiene raíces reales');
  } else if (discriminante == 0) {
    double raiz = -b / (2 * a);
    print('La ecuación tiene una única raíz real: $raiz');
  } else {
    double raiz1 = (-b + sqrt(discriminante)) / (2 * a);
    double raiz2 = (-b - sqrt(discriminante)) / (2 * a);
    print('La ecuación tiene dos raíces reales: $raiz1 y $raiz2');
  }
}
