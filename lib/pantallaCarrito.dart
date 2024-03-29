import 'dart:developer';

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
    final nCarrito = Provider.of<Carrito>(context);

    return Consumer<Carrito>(builder: (context, carrito, child) {
      return Scaffold(
        backgroundColor: Color(0xffd4d4d4),
        appBar: AppBar(
          backgroundColor: Color(0xffd4d4d4),
          title: Text('PEDIDOS'),
          elevation: 0,
          actions: [
            new Stack(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.shopping_cart,
                    color: Colors.black,
                  ),
                ),
                new Positioned(
                  top: 6,
                  right: 6,
                  child: Container(
                    padding: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    constraints: BoxConstraints(minWidth: 14, minHeight: 14),
                    child: Text(
                      carrito.numeroItems.toString(),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 9,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            child: carrito.items.length == 0
                ? Center(
                    child: Text('Carrito Vacio'),
                  )
                : Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      for (var item in carrito.items.values)
                        Card(
                            margin: EdgeInsets.all(10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset(
                                  'assets/img/' + item.imagen,
                                  width: 100,
                                ),
                                Expanded(
                                  child: Container(
                                    padding: EdgeInsets.all(5),
                                    height: 100,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(item.nombre),
                                        Text('\$ ' +
                                            item.precio.toString() +
                                            " x " +
                                            item.unidad),
                                        Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Container(
                                              child: IconButton(
                                                onPressed: () {
                                                  setState(() {
                                                    carrito
                                                        .decrementarCantidadItem(
                                                            item.id);
                                                    nCarrito.setnItems =
                                                        nCarrito.numeroItems;
                                                  });
                                                },
                                                icon: Icon(
                                                  Icons.remove,
                                                  size: 13,
                                                  color: Colors.white,
                                                ),
                                              ),
                                              width: 50,
                                              height: 30,
                                              decoration: BoxDecoration(
                                                color: Colors.red,
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(30),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width: 20,
                                              child: Center(
                                                child: Text(
                                                    item.cantidad.toString()),
                                              ),
                                            ),
                                            Container(
                                              child: IconButton(
                                                onPressed: () {
                                                  setState(() {
                                                    carrito
                                                        .incrementarCantidadItem(
                                                            item.id);
                                                  });
                                                },
                                                icon: Icon(
                                                  Icons.add,
                                                  size: 13,
                                                  color: Colors.white,
                                                ),
                                              ),
                                              width: 50,
                                              height: 30,
                                              decoration: BoxDecoration(
                                                color: Colors.red,
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(30),
                                                ),
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 100,
                                  width: 70,
                                  decoration:
                                      BoxDecoration(color: Colors.black),
                                  child: Center(
                                    child: Text(
                                      '\$ ' +
                                          (item.precio * item.cantidad)
                                              .toString(),
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Text(
                              'Subtotal: ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black54,
                              ),
                            ),
                            Text(
                              '\$ ' + carrito.subTotal.toStringAsFixed(2),
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.green.shade700,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Text(
                              'Impuesto: ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black54,
                              ),
                            ),
                            Text(
                              '\$ ' + carrito.impuesto.toStringAsFixed(2),
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.green.shade700,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Text(
                              'Total: ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              '\$ ' + carrito.total.toStringAsFixed(2),
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.green.shade700,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            String pedido = '';
            carrito.items.forEach((key, value) {
              pedido = '$pedido' +
                  value.nombre +
                  ' CANTIDAD: ' +
                  value.cantidad.toString() +
                  ' PRECIO UNITARIO: ' +
                  value.precio.toString() +
                  ' PRECIO TOTAL: ' +
                  (value.cantidad * value.precio).toStringAsFixed(2) +
                  '\n';
            });
            pedido = '$pedido' +
                'SUBTOTAL: ' +
                carrito.subTotal.toStringAsFixed(2) +
                '\n';
            pedido = '$pedido' +
                'IMPUESTO: ' +
                carrito.impuesto.toStringAsFixed(2) +
                '\n';
            pedido =
                '$pedido' + 'TOTAL: ' + carrito.total.toStringAsFixed(2) + '\n';
            log(pedido);
          },
          backgroundColor: Colors.black,
          child: Icon(
            Icons.send,
            color: Colors.white,
          ),
        ),
      );
    });
  }
}
