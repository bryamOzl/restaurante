import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:restaurante/carrito/Carrito.dart';
import 'package:restaurante/model/Carta.dart';
import 'package:restaurante/pantallaCarrito.dart';
import 'package:restaurante/pantallaInicio.dart';

class PantallaCarta extends StatefulWidget {
  PantallaCarta({Key? key}) : super(key: key);

  @override
  State<PantallaCarta> createState() => _PantallaCartaState();
}

class _PantallaCartaState extends State<PantallaCarta> {
  final GlobalKey<ScaffoldState> _globalKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final nCarrito = Provider.of<Carrito>(context);

    return Consumer<Carrito>(builder: (context, carrito, child) {
      return DefaultTabController(
        length: 3,
        child: Scaffold(
          key: _globalKey,
          backgroundColor: Color(0xffd4d4d4),
          appBar: AppBar(
            backgroundColor: Color(0xffd4d4d4),
            elevation: 0,
            title: Text('CARTA', style: TextStyle(fontWeight: FontWeight.bold)),
            bottom: TabBar(
              labelColor: Colors.black,
              indicatorColor: Colors.white,
              indicatorSize: TabBarIndicatorSize.label,
              tabs: [
                new Tab(
                  child: Padding(
                    padding: EdgeInsets.only(left: 5, right: 5),
                    child: Text('PLATOS'),
                  ),
                ),
                new Tab(
                  child: Padding(
                    padding: EdgeInsets.only(left: 5, right: 5),
                    child: Text('BEBIDAS'),
                  ),
                ),
                new Tab(
                  child: Padding(
                    padding: EdgeInsets.only(left: 5, right: 5),
                    child: Text('POSTRES'),
                  ),
                )
              ],
            ),
            actions: [
              new Stack(
                children: [
                  IconButton(
                    onPressed: () {
                      carrito.numeroItems != 0
                          ? Navigator.of(context).push(MaterialPageRoute(
                              // ignore: non_constant_identifier_names
                              builder: (BuildContext) => PantallaCarrito()))
                          // ignore: deprecated_member_use
                          : _globalKey.currentState!.showSnackBar(SnackBar(
                              content: Text(
                                'Llenar el carrito',
                                textAlign: TextAlign.center,
                              ),
                            ));
                    },
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
                        nCarrito.nItems.toString(),
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
          drawer: MenuLateral(),
          body: TabBarView(children: [
            Container(
              padding: EdgeInsets.all(10),
              child: GridView.builder(
                itemCount: platos.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: MediaQuery.of(context).size.width /
                      (MediaQuery.of(context).size.height) /
                      0.92,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 2,
                ),
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.all(5),
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x00000fcc),
                          blurRadius: 30,
                          offset: Offset(10, 10),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Image.asset('assets/img/' + platos[index].imagen),
                        Text(
                          platos[index].nombre,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 20),
                          child: Text(
                            "\$ " + platos[index].precio.toString(),
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        /* RaisedButton.icon(
                          onPressed: () {},
                          icon: Icon(Icons.add_shopping_cart),
                          label: Text('Agregar'),
                          //elevation: 0,
                        ), */
                        ElevatedButton.icon(
                          onPressed: () {
                            setState(() {
                              carrito.agregarItem(
                                  platos[index].id.toString(),
                                  platos[index].nombre,
                                  platos[index].precio,
                                  "1",
                                  platos[index].imagen,
                                  1);
                              nCarrito.setnItems = nCarrito.numeroItems;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.green,
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20.0)),
                            ),
                          ),
                          icon: Icon(Icons.add_shopping_cart),
                          label: Text('Agregar'),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: GridView.builder(
                itemCount: bebidas.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: MediaQuery.of(context).size.width /
                      (MediaQuery.of(context).size.height) /
                      0.92,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 2,
                ),
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.all(5),
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x00000fcc),
                          blurRadius: 30,
                          offset: Offset(10, 10),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Image.asset('assets/img/' + bebidas[index].imagen),
                        Text(
                          bebidas[index].nombre,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 20),
                          child: Text(
                            "\$ " + bebidas[index].precio.toString(),
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        ElevatedButton.icon(
                          onPressed: () {
                            setState(() {
                              carrito.agregarItem(
                                  bebidas[index].id.toString(),
                                  bebidas[index].nombre,
                                  bebidas[index].precio,
                                  "1",
                                  bebidas[index].imagen,
                                  1);
                              nCarrito.setnItems = nCarrito.numeroItems;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.green,
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20.0)),
                            ),
                          ),
                          icon: Icon(Icons.add_shopping_cart),
                          label: Text('Agregar'),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: GridView.builder(
                itemCount: postres.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: MediaQuery.of(context).size.width /
                      (MediaQuery.of(context).size.height) /
                      0.92,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 2,
                ),
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.all(5),
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x00000fcc),
                          blurRadius: 30,
                          offset: Offset(10, 10),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Image.asset('assets/img/' + postres[index].imagen),
                        Text(
                          postres[index].nombre,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 20),
                          child: Text(
                            "\$ " + postres[index].precio.toString(),
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        ElevatedButton.icon(
                          onPressed: () {
                            setState(() {
                              carrito.agregarItem(
                                  postres[index].id.toString(),
                                  postres[index].nombre,
                                  postres[index].precio,
                                  "1",
                                  postres[index].imagen,
                                  1);
                              nCarrito.setnItems = nCarrito.numeroItems;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.green,
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20.0)),
                            ),
                          ),
                          icon: Icon(Icons.add_shopping_cart),
                          label: Text('Agregar'),
                        )
                      ],
                    ),
                  );
                },
              ),
            )
          ]),
        ),
      );
    });
  }
}

class MenuLateral extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(
              'RESTAURANTE',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            accountEmail: Text(''),
            decoration: BoxDecoration(color: Color(0xffd4d4d4)),
          ),
          InkWell(
            child: new ListTile(
              title: Text(
                'INICIO',
                style: TextStyle(color: Colors.black),
              ),
              leading: Icon(
                Icons.home,
                color: Colors.black54,
              ),
            ),
            onTap: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                  // ignore: non_constant_identifier_names
                  builder: (BuildContext) => PantallaInicio()));
            },
          ),
          InkWell(
            child: new ListTile(
              title: Text(
                'CARTA',
                style: TextStyle(color: Colors.black),
              ),
              leading: Icon(
                Icons.menu_book,
                color: Colors.black54,
              ),
            ),
            onTap: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                  // ignore: non_constant_identifier_names
                  builder: (BuildContext) => PantallaCarta()));
            },
          ),
          InkWell(
            child: new ListTile(
              title: Text(
                'CARRITO',
                style: TextStyle(color: Colors.black),
              ),
              leading: Icon(
                Icons.add_shopping_cart,
                color: Colors.black54,
              ),
            ),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  // ignore: non_constant_identifier_names
                  builder: (BuildContext) => PantallaCarrito()));
            },
          ),
          InkWell(
            child: new ListTile(
              title: Text(
                'RESTAURANTE',
                style: TextStyle(color: Colors.black),
              ),
              leading: Icon(
                Icons.account_box,
                color: Colors.black54,
              ),
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
