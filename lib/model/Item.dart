class Item {
  String? id;
  String? nombre;
  double? precio;
  String? unidad;
  String? imagen;
  int? cantidad;

  Item(this.id, this.nombre, this.precio, this.unidad, this.imagen,
      this.cantidad);

  Item.map(dynamic o) {
    this.id = o['id'];
    this.nombre = o["nombre"];
    this.precio = o['precio'];
    this.unidad = o['unidad'];
    this.imagen = o['imagen'];
    this.cantidad = o['cantidad'];
  }

  Map<String, dynamic> toMap() {
    var map = new Map<String, dynamic>();
    map['id'] = id;
    map['nombre'] = nombre;
    map['precio'] = precio;
    map['unidad'] = unidad;
    map['imagen'] = imagen;
    map['cantidad'] = cantidad;
    return map;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['nombre'] = this.nombre;
    data['precio'] = this.precio;
    data['unidad'] = this.unidad;
    data['imagen'] = this.imagen;
    data['cantidad'] = this.cantidad;
    return data;
  }
}
