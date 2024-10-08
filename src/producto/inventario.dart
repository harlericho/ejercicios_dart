// Usar la clase Producto.
import 'producto.dart';

// Clase inventario
class Inventario {
  // Lista de productos
  List<Producto> productos = [];

  // Función para •	Agregar nuevos productos al inventario.
  void agregarProductos(Producto producto) {
    productos.add(producto);
    print('Producto "${producto.nombre}" agregado.');
  }

  // Función objeto para •	Buscar productos por nombre o categoría.
  Producto? buscarNombreProducto(String nombre) {
    for (var producto in productos) {
      if (producto.nombre.toLowerCase() == nombre.toLowerCase()) {
        return producto;
      }
    }
    return null;
  }

  // Función lista para •	Buscar productos por nombre o categoría.
  List<Producto> buscarCategoriaProducto(String categoria) {
    List<Producto> list = productos
        .where((producto) =>
            producto.categoria.toLowerCase() == categoria.toLowerCase())
        .toList();
    return list;
  }

  // Función para •	Mostrar todos los productos de una categoría en específico.
  void mostrarProductosCategoria(String categoria) {
    List<Producto> list = buscarCategoriaProducto(categoria);
    if (list.isNotEmpty) {
      print('Productos en la categoría "$categoria":');
      for (var producto in list) {
        print(
            'Nombre producto: ${producto.nombre} - Precio: \$${producto.precio}, Stock: ${producto.stock}');
      }
    }
  }

  // Función para •	Actualizar la cantidad en stock de un producto.
  void actualizarStock(String nombre, int cantidad) {
    Producto? producto = buscarNombreProducto(nombre);
    if (producto != null) {
      producto.stock = cantidad;
      print('Stock del "${producto.nombre}" es actualizado a: $cantidad');
    }
  }

  // Función double para •	Calcular el valor total del inventario.
  double calcularTotal() {
    double total = 0;
    for (var producto in productos) {
      total += producto.precio * producto.stock;
    }
    return total;
  }
}
