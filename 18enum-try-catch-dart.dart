enum Color { rojo, naranja, amarillo, verde, azul, anil, violeta }

void main() {
  try {
    print(Color.values.byName('azul'));
    print(Color.values.byName('marron'));
  } on ArgumentError catch (e) {
    print('Error: el color no existe ($e)');
  } catch (e) {
    print('Error inesperado: $e');
  } finally {
    // Se ejecuta siempre, haya o no error
    print('Fin de la búsqueda de colores');
  }
}
