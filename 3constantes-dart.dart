void main() {
  // Constante pi declarada con const
  const double pi = 3.14159;
  print('El valor de pi es $pi');

  // diasDelAnyo depende de si el año es bisiesto, así que su valor
  // se calcula en tiempo de ejecución (no en tiempo de compilación)
  int anyo = 2024;
  bool esBisiesto = (anyo % 4 == 0 && anyo % 100 != 0) || (anyo % 400 == 0);

  // Con final funciona sin problema, porque solo exige que el valor
  // se asigne una única vez, pero permite calcularlo en tiempo de ejecución
  final int diasDelAnyo = esBisiesto ? 366 : 365;
  print('El año $anyo es bisiesto: $esBisiesto');
  print('diasDelAnyo (con final) = $diasDelAnyo');

  // Si intentamos declarar diasDelAnyo con const en vez de final,
  // Dart da un error de compilación:
  // "Const variables must be initialized with a constant value."
  // Esto ocurre porque const exige que el valor se conozca en tiempo
  // de compilación, y aquí el valor depende de la variable esBisiesto,
  // que solo se conoce al ejecutar el programa.
  //
  // const int diasDelAnyoConst = esBisiesto ? 366 : 365; // ERROR
}
