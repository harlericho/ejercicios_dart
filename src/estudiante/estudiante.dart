// Instacia de la clase Estudiante Objeto
class Estudiante {
  String nombre;
  List<double> calificaciones;
  //Constructor
  Estudiante(this.nombre, this.calificaciones);

  // •	Calcular el promedio global con el tamaño de las calificaciones.
  double promedio() {
    return (calificaciones.reduce((a, b) => a + b)) / calificaciones.length;
  }
}
