// Usar la clase Estudiante.
import 'estudiante.dart';

class Promedio {
  // Lista de estudiantes
  List<Estudiante> estudiantes = [];

  // Funcion para •	Añadir un nuevo estudiante con sus respectivas calificaciones.
  void agregarEstudiante(String nombre, List<double> calificaciones) {
    estudiantes.add(Estudiante(nombre, calificaciones));
  }

  // Funcion para •	Calcular y devolver el promedio de calificaciones de cada estudiante.
  void mostrarPromedios() {
    print('Estudiantes con su nota final:');
    for (var estudiante in estudiantes) {
      print(
          'Estudiante: ${estudiante.nombre}, Promedio: ${estudiante.promedio().toStringAsFixed(2)}');
    }
  }

  // Funcion para •	Determinar la calificación más alta y más baja para cada asignatura.
  void mostrarCalificacionesAltasBajas() {
    print('\nCalificaciones más altas y más bajas de cada estudiante:');
    for (var estudiante in estudiantes) {
      double calificacionAlta =
          estudiante.calificaciones.reduce((a, b) => a > b ? a : b);
      double calificacionBaja =
          estudiante.calificaciones.reduce((a, b) => a < b ? a : b);
      print(
          'Estudiante: ${estudiante.nombre}, Nota Más alta: $calificacionAlta, Nota Más baja: $calificacionBaja');
    }
  }

  // Funcion para •	Mostrar los estudiantes que han obtenido un promedio superior a un valor dado.
  void mostrarEstudiantesConPromedioSuperior(double valor) {
    print('\nEstudiantes con promedio superior a 80.0:');
    for (var estudiante in estudiantes) {
      if (estudiante.promedio() > valor) {
        print(
            'Estudiante: ${estudiante.nombre}, Nota: ${estudiante.promedio().toStringAsFixed(2)}');
      }
    }
  }

  // Funciones para •	Ordenar la matriz de estudiantes en función de su promedio de calificaciones de forma ascendente o descendente.
  void ordenarPorPromedioAscendente({bool ascendente = true}) {
    print('\nEstudiantes ordenados por promedio (ascendente):');
    estudiantes.sort((a, b) => ascendente
        ? a.promedio().compareTo(b.promedio())
        : b.promedio().compareTo(a.promedio()));
  }

  void ordernarPorPromedioDescendente({bool descendente = true}) {
    print('\nEstudiantes ordenados por promedio (descendente):');
    estudiantes.sort((a, b) => descendente
        ? b.promedio().compareTo(a.promedio())
        : a.promedio().compareTo(b.promedio()));
  }
}
