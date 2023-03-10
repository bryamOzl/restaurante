import 'package:flutter/material.dart';
import 'package:restaurante/pantallacarta.dart';

class PantallaInicio extends StatefulWidget {
  PantallaInicio({Key? key}) : super(key: key);

  @override
  State<PantallaInicio> createState() => _PantallaInicioState();
}

class _PantallaInicioState extends State<PantallaInicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffd4d4d4),
      body: Container(
        child: Stack(
          children: [
            Positioned(
              child: Align(
                alignment: FractionalOffset.bottomRight,
                child: Container(
                  padding:
                      EdgeInsets.only(right: 15, left: 5, top: 50, bottom: 50),
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(200),
                      )),
                  child: RotatedBox(
                    quarterTurns: 3,
                    child: Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Text(
                        'La mejor comida tipica',
                        style: TextStyle(
                          color: Colors.white,
                          fontStyle: FontStyle.italic,
                          fontSize: 20,
                          letterSpacing: 5,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Image.asset(
                    'assets/img/logo.jpg',
                    width: MediaQuery.of(context).size.width / 2,
                    height: 200,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 100),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(13.0),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        // ignore: non_constant_identifier_names
                        builder: (BuildContext) => PantallaCarta()));
                  },
                  child: Icon(
                    Icons.chevron_right,
                    color: Colors.white,
                  ),
                ),
                /* RaisedButton(
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(13.0),
                  color: Colors.black,
                  child: Icon(
                    Icons.chevron_right,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ) */
              ],
            )
          ],
        ),
      ),
    );
  }
}
