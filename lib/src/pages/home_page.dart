import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:navegar/src/pages/sing_in.dart';
import 'package:navegar/src/pages/sing_up.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  final screens = [
    const Center(
      child: Text(
        'Home Screen',
        style: TextStyle(fontSize: 45),
      ),
    ),
    const Center(
      child: Text(
        'Profile',
        style: TextStyle(fontSize: 45),
      ),
    ),
    const Center(
      child: Text(
        'Shop',
        style: TextStyle(fontSize: 45),
      ),
    ),
    const Center(
      child: Text(
        'Email',
        style: TextStyle(fontSize: 45),
      ),
    ),
    const Center(
      child: Text(
        'Search',
        style: TextStyle(fontSize: 45),
      ),
    )
  ];

  final colors = [
    Colors.cyan,
    Colors.purple,
    Colors.brown,
    Colors.black87,
    Colors.green,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Homework App',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
        backgroundColor: colors[_currentIndex],
      ),
      body: _currentIndex == 0
          ? Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[
                    Color.fromARGB(255, 77, 199, 224),
                    Color.fromARGB(20, 184, 180, 154),
                  ],
                  begin: Alignment.topCenter,
                ),
              ),
              child: ListView(
                padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 50),
                children: <Widget>[
                  SizedBox(
                    width: 100.0,
                    height: 100.0,
                    child: Image.asset("images/logo.png"),
                  ),
                  Divider(
                    height: 50.0,
                  ),
                  Text(
                    "Taller en clase y Deber",
                    style: TextStyle(
                      fontFamily: "PermanentMarker",
                      fontSize: 40.0,
                    ),
                  ),
                  SizedBox(
                    width: 50.0,
                    height: 50.0,
                    child: ElevatedButton(
                      onPressed: () {
                        final route =
                            MaterialPageRoute(builder: (context) => SingUp());
                        Navigator.push(context, route);
                      },
                      child: Text(
                        "SING UP",
                        style: TextStyle(
                          color: Color.fromARGB(255, 92, 88, 88),
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
                    width: 50.0,
                    height: 50.0,
                    child: ElevatedButton(
                      onPressed: () {
                        final route =
                            MaterialPageRoute(builder: (context) => SingIn());
                        Navigator.push(context, route);
                      },
                      child: Text(
                        "SING IN",
                        style: TextStyle(
                          color: Color.fromARGB(255, 92, 88, 88),
                          fontFamily: "FredokaOne",
                          fontSize: 30.0,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          : screens[_currentIndex],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //boton + para recordar
        },
        child: Icon(Icons.add),
        backgroundColor: colors[_currentIndex],
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        margin: const EdgeInsets.only(bottom: 10),
        child: GNav(
          color: colors[_currentIndex],
          tabBackgroundColor: colors[_currentIndex],
          tabBorderRadius: 20,
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
          selectedIndex: _currentIndex,
          onTabChange: (index) => {
            setState(
              () => _currentIndex = index,
            )
          },
          tabs: const [
            GButton(
              icon: Icons.home,
              text: 'Home',
              iconActiveColor: Colors.white,
              textColor: Colors.white,
            ),
            GButton(
              icon: Icons.person,
              text: 'Profile',
              iconActiveColor: Colors.white,
              textColor: Colors.white,
            ),
            GButton(
              icon: Icons.shop,
              text: 'Shop',
              iconActiveColor: Colors.white,
              textColor: Colors.white,
            ),
            GButton(
              icon: Icons.email,
              text: 'E-mail',
              iconActiveColor: Colors.white,
              textColor: Colors.white,
            ),
            GButton(
              icon: Icons.search,
              text: 'Search',
              iconActiveColor: Colors.white,
              textColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
