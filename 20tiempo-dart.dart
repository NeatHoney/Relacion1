void main() {
  Map<String, double> maximas = {
    'lunes': 24.5,
    'martes': 27.0,
    'miércoles': 22.3,
    'jueves': 29.8,
    'viernes': 29.8,
    'sábado': 21.0,
    'domingo': 25.2,
  };

  double mayor = maximas.values.first;
  double menor = maximas.values.first;
  double suma = 0;

  maximas.forEach((dia, temp) {
    if (temp > mayor) mayor = temp;
    if (temp < menor) menor = temp;
    suma += temp;
  });

  // Pueden coincidir varios días con la misma temperatura
  List<String> diasMayor = [];
  List<String> diasMenor = [];
  maximas.forEach((dia, temp) {
    if (temp == mayor) diasMayor.add(dia);
    if (temp == menor) diasMenor.add(dia);
  });

  print('Mayor máxima: $mayor ºC (${diasMayor.join(', ')})');
  print('Menor máxima: $menor ºC (${diasMenor.join(', ')})');
  print('Media de las máximas: ${(suma / maximas.length).toStringAsFixed(2)} ºC');
}
