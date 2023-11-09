import 'package:flutter/material.dart';
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
          width: double.infinity,//Se ajusta al tamaño
          height: double.infinity,
          decoration: BoxDecoration(gradient: LinearGradient(colors: <Color>[
            Color.fromARGB(255, 224, 77, 143),
            Color.fromARGB(0, 194, 23, 228)
          ], begin: Alignment.topCenter)),
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 40.0,vertical: 200),
            children: <Widget>[
              //!Aqui se ubica el URL de una imagen
              IconContainers(url: "images/lobo.jpg")
            ],
          ),
        ),
      ),
    );
  }
}