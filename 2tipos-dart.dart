void main() {
  // vamos a declarar variables de distintos tipos
  String nombre = 'Fran';
  int edad = 20;
  double altura = 1.70;
  bool esMayor = true;
  dynamic variableDinamica = 'Hola';

  print('variableDinamica es de tipo ${variableDinamica.runtimeType} y su valor es $variableDinamica');
  print('Mi nombre es $nombre, tengo $edad años, mido $altura metros y es $esMayor que soy mayor de edad');

  variableDinamica = 42;
  print('variableDinamica es de tipo ${variableDinamica.runtimeType} y su valor es $variableDinamica');
  
}