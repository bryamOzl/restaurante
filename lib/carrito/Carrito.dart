import 'package:flutter/material.dart';
import 'package:restaurante/model/Item.dart';

class Carrito extends ChangeNotifier {
  Map<String, Item> _items = {};
  Map<String, Item> get items {
    return {..._items};
  }

  int get numeroItems {
    return _items.length;
  }

  double get subTotal {
    var total = 0.0;
    items.forEach(
        (key, elementos) => total += elementos.precio * elementos.cantidad);
    return total;
  }

  double get impuesto {
    var total = 0.0;
    total = this.subTotal * 0.12;
    return total;
  }

  double get total {
    var total = 0.0;
    total = this.subTotal + impuesto;
    return total;
  }

  void agregarItem(
    String productoId,
    String nombre,
    double precio,
    String unidad,
    String imagen,
    int cantidad,
  ) {
    if (_items.containsKey(productoId)) {
      _items.update(
          productoId,
          (old) => Item(
              id: old.id,
              nombre: old.nombre,
              precio: old.precio,
              unidad: old.unidad,
              imagen: old.imagen,
              cantidad: old.cantidad + 1));
    } else {
      _items.putIfAbsent(
          productoId,
          () => Item(
              id: productoId,
              nombre: nombre,
              precio: precio,
              unidad: unidad,
              imagen: imagen,
              cantidad: 1));
    }
  }

  void removerItem(String productoId) {
    _items.remove(productoId);
  }

  void incrementarCantidadItem(String productoId) {
    if (_items.containsKey(productoId)) {
      _items.update(
          productoId,
          (old) => Item(
              id: old.id,
              nombre: old.nombre,
              precio: old.precio,
              unidad: old.unidad,
              imagen: old.imagen,
              cantidad: old.cantidad + 1));
    }
  }

  void decrementarCantidadItem(String productoId) {
    if (!_items.containsKey(productoId)) return;
    if (_items[productoId]!.cantidad > 1) {
      _items.update(
          productoId,
          (old) => Item(
              id: old.id,
              nombre: old.nombre,
              precio: old.precio,
              unidad: old.unidad,
              imagen: old.imagen,
              cantidad: old.cantidad - 1));
    } else {
      _items.remove(productoId);
    }
  }

  void removerCarrito() {
    _items = {};
  }
}
