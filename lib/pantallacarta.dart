import 'package:flutter/material.dart';
import 'package:restaurante/model/Carta.dart';
import 'package:restaurante/pantallaInicio.dart';

class PantallaCarta extends StatefulWidget {
  PantallaCarta({Key? key}) : super(key: key);

  @override
  State<PantallaCarta> createState() => _PantallaCartaState();
}

class _PantallaCartaState extends State<PantallaCarta> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
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
                    0.9,
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
                    0.9,
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
                    0.9,
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
            onTap: () {},
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
