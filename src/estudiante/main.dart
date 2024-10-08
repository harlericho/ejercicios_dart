// Usar la clase Promedio.
import 'promedio.dart';

void main() {
  print('Realizado por: Carlos Choca');
  // Instancia la clase Promedio
  Promedio promedio = Promedio();

  // Agregar estudiantes con su listado de calificaciones
  promedio.agregarEstudiante('Carlos Choca.', [85.0, 93.0, 68.0]);
  promedio.agregarEstudiante('Javer Sanchez.', [98.0, 56.0, 75.0]);
  promedio.agregarEstudiante('Sofia Choca.', [100.0, 87.0, 55.0]);
  promedio.agregarEstudiante('Luisa Sanchez.', [65.0, 78.0, 90.0]);
  promedio.agregarEstudiante('Jorge Perez.', [45.0, 100.0, 80.0]);
  promedio.agregarEstudiante('Maria Gomez.', [75.0, 85.0, 95.0]);
  print('--------------------------------');
  promedio.mostrarPromedios();
  print('--------------------------------');
  promedio.mostrarCalificacionesAltasBajas();
  print('--------------------------------');
  promedio.mostrarEstudiantesConPromedioSuperior(80.0);
  print('--------------------------------');
  promedio.ordenarPorPromedioAscendente(ascendente: false);
  promedio.mostrarPromedios();
  print('--------------------------------');
  promedio.ordernarPorPromedioDescendente(descendente: false);
  promedio.mostrarPromedios();
}
