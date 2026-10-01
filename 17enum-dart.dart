enum Color { rojo, naranja, amarillo, verde, azul, anil, violeta }

void main() {
  print(Color.values);
  print(Color.values[2]); // indexados desde 0
  print(Color.verde.index);
  print(Color.values.byName('azul'));

  // Provoca una excepción: lanza ArgumentError (en Dart 3.x) y el programa
  // termina con un error no controlado
  print(Color.values.byName('marron'));
}
