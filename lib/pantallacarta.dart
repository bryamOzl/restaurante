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
    return Scaffold(
      appBar: AppBar(
        title: Text('CARTA'),
      ),
      drawer: MenuLateral(),
      body: Container(),
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
            accountName: Text('RESTAURANTE'),
            accountEmail: Text(''),
            decoration: BoxDecoration(color: Colors.amber),
          ),
          InkWell(
            child: new ListTile(
              title: Text(
                'INICIO',
                style: TextStyle(color: Colors.amberAccent),
              ),
              leading: Icon(
                Icons.home,
                color: Colors.amber,
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
                style: TextStyle(color: Colors.amberAccent),
              ),
              leading: Icon(
                Icons.menu_book,
                color: Colors.amber,
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
                style: TextStyle(color: Colors.amberAccent),
              ),
              leading: Icon(
                Icons.add_shopping_cart,
                color: Colors.amber,
              ),
            ),
            onTap: () {},
          ),
          InkWell(
            child: new ListTile(
              title: Text(
                'RESTAURANTE',
                style: TextStyle(color: Colors.amberAccent),
              ),
              leading: Icon(
                Icons.account_box,
                color: Colors.amber,
              ),
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
