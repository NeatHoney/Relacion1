void main() {
  // Si alguna edad puede no estar inicializada, el valor debe ser nullable (int?)
  Map<String, int?> edades = {'Ana': 25, 'Luis': null, 'Eva': 22};

  print('--- Clave y valor ---');
  edades.forEach((nombre, edad) => print('$nombre: ${edad ?? 'sin edad'}'));

  print('--- Solo claves ---');
  for (String nombre in edades.keys) {
    print(nombre);
  }

  print('--- Solo valores ---');
  for (int? edad in edades.values) {
    print(edad ?? 'sin edad');
  }
}
