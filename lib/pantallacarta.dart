import 'package:flutter/material.dart';
import 'package:restaurante/pantallainicio.dart';

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
            child: Text("PLATOS"),
          ),
          Container(
            child: Text("BEBIDAS"),
          ),
          Container(
            child: Text("POSTRES"),
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
