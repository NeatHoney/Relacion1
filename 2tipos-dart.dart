void main() {
  // Tipos básicos
  String nombre = 'Fran';
  int edad = 20;
  double altura = 1.70;
  bool esMayor = true;
  dynamic variableDinamica = 'Hola';

  print('variableDinamica es de tipo ${variableDinamica.runtimeType} y su valor es $variableDinamica');
  print('Mi nombre es $nombre, tengo $edad años, mido $altura metros y es $esMayor que soy mayor de edad');

  variableDinamica = 42;
  print('variableDinamica es de tipo ${variableDinamica.runtimeType} y su valor es $variableDinamica');

  // Tipos complejos
  List<int> lista = [1, 2, 3];
  lista.add(4);
  print('List: $lista, primer elemento ${lista[0]}, longitud ${lista.length}');

  Map<String, int> mapa = {'Ana': 25, 'Luis': 30};
  mapa['Eva'] = 22;
  print('Map: $mapa, edad de Ana ${mapa['Ana']}');

  Set<int> conjunto = {1, 2, 3};
  conjunto.add(3); // los repetidos se ignoran
  print('Set: $conjunto');

  (String, int) registro = ('Fran', 20);
  var registroNombrado = (nombre: 'Fran', edad: 20);
  print('Record: $registro, campo 1: ${registro.$1}, nombrado: ${registroNombrado.nombre}');

  // Operadores
  print('int: ${edad + 5} ${edad ~/ 3} ${edad % 3} ${edad / 3}');
  print('double: ${altura * 2} ${altura.round()}');
  print('String: ${nombre + '!'} ${nombre * 2} ${nombre.toUpperCase()} ${nombre.length}');
  print('bool: ${esMayor && (edad > 30)} ${!esMayor || (edad > 30)} ${!esMayor}');

  // Parseo
  print(int.parse('42') + 1);
  print(double.parse('3.5') * 2);
  print(int.tryParse('abc')); // null si no se puede convertir
  print('Número: ${42.toString()}');
}
