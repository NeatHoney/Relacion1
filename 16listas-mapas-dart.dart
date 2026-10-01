void main() {
  List<String> dias = ['lunes', 'martes', 'miércoles', 'jueves', 'viernes'];
  print('Días laborables: $dias');

  dias.addAll(['sábado', 'domingo']);
  print('Todos los días: $dias');

  dias.forEach((dia) => print(dia));

  Map<String, int> edades = {'Ana': 25, 'Luis': 30, 'Eva': 22};
  edades.forEach((nombre, edad) => print('$nombre tiene $edad años'));
}
