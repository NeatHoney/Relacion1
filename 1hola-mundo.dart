/* Ejercicio 1 de la relacion 1
    archivo: 1hola-mundo.dart
    fecha creación: septiembre 2026
    autor: Francisco Herrera */

/// Comentario de documentación (tres barras), usado para documentar funciones y clases
void main() {
  // Comentario de una línea
  print('Hola mundo');

  int veces = 1;
  String nombre = 'Fran';

  /* Comentario de varias líneas:
     operaciones combinando el int y el String */
  print('Hola $nombre!'); // con $ se inserta el valor de la variable
  print('Has ejecutado el programa ${veces * 2 - 1} vez(es)'); // expresión entre llaves
  print(nombre + veces.toString()); // concatenación: el int se convierte a String
  print(nombre * (veces + 2)); // repetir el String: FranFranFran
}
