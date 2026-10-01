void main() {
  int n = 10;

  if (n < 0) {
    print('El factorial solo está definido para enteros no negativos');
    return;
  }

  int factorial = 1;
  for (int i = 2; i <= n; i++) {
    factorial *= i;
  }

  print('$n! = $factorial');
}
