// Usar la clase Producto.
import 'producto.dart';

// Usar la clase Inventario.
import 'inventario.dart';

void main() {
  print('Realizado por: Carlos Choca');
  // Instacia la clase Inventario
  Inventario inventario = Inventario();

  // Agregar productos nuevos al inventario
  inventario.agregarProductos(Producto('Laptop', 1500.00, 5, 'Electrónica'));
  inventario.agregarProductos(Producto('Audífonos', 200.00, 10, 'Electrónica'));
  inventario
      .agregarProductos(Producto('Discos Duros', 100.00, 15, 'Electrónica'));
  inventario.agregarProductos(Producto('Camiseta', 35.00, 20, 'Ropa'));
  inventario.agregarProductos(Producto('Zapatos', 140.00, 15, 'Ropa'));
  inventario.agregarProductos(Producto('Reloj', 250.00, 8, 'Accesorios'));
  inventario.agregarProductos(Producto('Bolso', 85.00, 12, 'Accesorios'));
  print('--------------------------------');
  // Buscar producto por nombre
  var producto0 = inventario.buscarNombreProducto('Laptop');
  if (producto0 != null) {
    print(
        'Producto: ${producto0.nombre}, Precio: \$${producto0.precio}, Stock: ${producto0.stock}');
  }
  var producto1 = inventario.buscarNombreProducto('Camiseta');
  if (producto1 != null) {
    print(
        'Producto1: ${producto1.nombre}, Precio: \$${producto1.precio}, Stock: ${producto1.stock}');
  }
  var producto2 = inventario.buscarNombreProducto('Reloj');
  if (producto2 != null) {
    print(
        'Producto2: ${producto2.nombre}, Precio: \$${producto2.precio}, Stock: ${producto2.stock}');
  }
  print('--------------------------------');
  // Mostrar productos por categoría
  inventario.mostrarProductosCategoria('Electrónica');
  inventario.mostrarProductosCategoria('Ropa');
  inventario.mostrarProductosCategoria('Accesorios');
  print('--------------------------------');
  // Actualizar el stock de un producto en el inventario
  inventario.actualizarStock('Camiseta', 25);
  inventario.actualizarStock('Zapatos', 225);
  inventario.actualizarStock('Bolso', 435);
  print('--------------------------------');
  // Calcular el valor total de dinero del inventario
  print(
      'El valor total de dinero del inventario es: \$${inventario.calcularTotal()}');
}
