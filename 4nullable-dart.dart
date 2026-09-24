void main() {
  // Una variable nullable se declara añadiendo ? al tipo.
  // Esto indica que, además de valores de ese tipo, puede contener null.
  String? nombre;
  print('nombre es null al principio: $nombre');

  nombre = 'Fran';
  print('ahora nombre vale: $nombre');

  nombre = null;
  print('nombre vuelve a ser null: $nombre');

  // Si la variable NO es nullable (sin el ?), Dart no permite asignarle null
  // ni dejarla sin inicializar sin darle un valor por defecto:
  // String nombreNoNullable; // esto obliga a asignar un valor antes de usarla
  // nombreNoNullable = null; // ERROR: The value 'null' can't be assigned

  // Operador ?. (null-aware access): si la variable es null, no falla,
  // simplemente devuelve null en vez de lanzar una excepción
  int? longitud = nombre?.length;
  print('longitud de nombre (con ?.): $longitud');

  // Operador ?? (if-null): devuelve el valor de la izquierda si no es null,
  // o el de la derecha si sí lo es
  String saludo = nombre ?? 'invitado';
  print('saludo: $saludo');

  // Operador ??= : asigna un valor solo si la variable es null
  nombre ??= 'Desconocido';
  print('nombre tras ??=: $nombre');

  // Operador ! (null assertion): afirma que el valor no es null.
  // Si en realidad fuera null, lanzaría una excepción en tiempo de ejecución
  String? otroNombre = obtenerNombre();
  int longitudSegura = otroNombre!.length;
  print('longitud usando ! : $longitudSegura');
}

// Dart no sabe en tiempo de compilación si esta función devuelve null,
// así que sigue tratando el resultado como nullable
String? obtenerNombre() {
  return 'Fran';
}
