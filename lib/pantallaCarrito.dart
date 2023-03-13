import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:restaurante/carrito/Carrito.dart';

class PantallaCarrito extends StatefulWidget {
  PantallaCarrito({Key? key}) : super(key: key);

  @override
  State<PantallaCarrito> createState() => _PantallaCarritoState();
}

class _PantallaCarritoState extends State<PantallaCarrito> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Carrito>(builder: (context, carrito, child) {
      return Scaffold(
        appBar: AppBar(
          title: Text('PEDIDOS'),
          elevation: 0,
        ),
        body: Container(
          child: carrito.items.length == 0
              ? Center(
                  child: Text('Carrito Vacio'),
                )
              : Column(
                  children: [
                    for (var item in carrito.items.values)
                      Card(
                        child: Text(item.nombre),
                      )
                  ],
                ),
        ),
      );
    });
  }
}
