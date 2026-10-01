void main() {
  int dividendo = 47;
  int divisor = 5;

  if (divisor <= 0 || dividendo < 0) {
    print('Los números deben ser enteros positivos');
    return;
  }

  // División de Euclides: se resta el divisor mientras sea posible
  int resto = dividendo;
  int cociente = 0;
  while (resto >= divisor) {
    resto -= divisor;
    cociente++;
  }

  print('$dividendo = $divisor * $cociente + $resto');
  print('Cociente: $cociente, resto: $resto');
}
