import 'package:flutter/material.dart';
import 'package:navegar/src/pages/sing_in.dart';
import 'package:navegar/src/pages/sing_up.dart';
import 'package:navegar/src/widgets/icon_containers.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: <Color>[
                Color.fromARGB(255, 77, 199, 224),
                Color.fromARGB(20, 184, 180, 154)
              ],
              begin: Alignment.topCenter,
            ),
          ),
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 200),
            children: <Widget>[
              //! Aquí se ubica el URL de una imagen
              SizedBox(
                width: 100.0, // Ajusta el ancho de la imagen según tus necesidades
                height: 100.0, // Ajusta la altura de la imagen según tus necesidades
                child: Image.asset("images/lobo.jpg"),
              ),
              Text(
                "Bienvenidos a mi curso",
                style: TextStyle(
                  fontFamily: "PermanentMarker",
                  fontSize: 30.0,
                ),
              ),
              Divider(
                height: 30.0,
              ),
              Text(
                "Ejercicio N.-003",
                style: TextStyle(
                  fontFamily: "PermanentMarker",
                  fontSize: 40.0,
                ),
              ),
              SizedBox(
                width: 60.0,
                height: 60.0,
                child: ElevatedButton(
                  onPressed: () {
                    final route =
                        MaterialPageRoute(builder: (context) => SingUp());
                    Navigator.push(context, route);
                  },
                  child: Text(
                    "SING UP",
                    style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontFamily: "FredokaOne",
                      fontSize: 30.0,
                    ),
                  ),
                ),
              ),
              Divider(
                height: 30.0,
              ),
              SizedBox(
                width: 60.0,
                height: 60.0,
                child: ElevatedButton(
                  onPressed: () {
                    final route =
                        MaterialPageRoute(builder: (context) => SingIn());
                    Navigator.push(context, route);
                  },
                  child: Text(
                    "SING IN",
                    style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontFamily: "FredokaOne",
                      fontSize: 30.0,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

