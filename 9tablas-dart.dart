void main() {
  for (int n = 1; n <= 10; n++) {
    print('--- Tabla del $n ---');
    for (int i = 1; i <= 10; i++) {
      print('$n x $i = ${n * i}');
    }
    print('');
  }
}
