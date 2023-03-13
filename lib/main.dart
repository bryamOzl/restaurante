import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:restaurante/pantallainicio.dart';

import 'carrito/Carrito.dart';

void main() => runApp(ChangeNotifierProvider(
      create: (context) => Carrito(),
      child: MyApp(),
    ));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Restaurante',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PantallaInicio(),
    );
  }
}
