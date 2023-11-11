import 'package:flutter/material.dart';
import 'package:navegar/src/pages/home_page.dart';
import 'package:navegar/src/pages/sing_in.dart';
import 'package:navegar/src/pages/sing_up.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      //! Crear unas rutas de navegacion
      theme: ThemeData(
        //primarySwatch: Colors.pink,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        useMaterial3: true,
      ),
      initialRoute: "Home",
      routes: <String, WidgetBuilder>{
        "Home": (BuildContext context) => MyHomePage(),
        "Sing_in": (BuildContext context) => SingIn(),
        "Sing_up": (BuildContext context) => SingUp(),
      },
    );
  }
}
