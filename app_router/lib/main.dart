import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'app router',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Colors.red),
    // Inicie la aplicación con la ruta con nombre. En nuestro caso, la aplicación comenzará
    // en el Widget FirstScreen
    initialRoute: '/',
    routes: {
      // Cuando naveguemos hacia la ruta "/", crearemos el Widget FirstScreen
      '/': (context) => FirstScreen(),
      // Cuando naveguemos hacia la ruta "/second", crearemos el Widget SecondScreen
      '/second': (context) => SecondScreen(),
    },
  ));
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Primera pantalla'),
      ),
      body: Center(        
        child: RaisedButton(
          child: Text('Pantalla de inicio'),
          onPressed: () {
            // Navega a la segunda pantalla usando una ruta con nombre
            Navigator.pushNamed(context, '/second');
          },
        ),
        
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Segunda pantalla"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            // Navega de regreso a la primera pantalla haciendo clic en la ruta actual
            // fuera de la pila
            Navigator.pop(context);
          },
          child: Text('¡Regresa!'),
        ),
      ),
    );
  }
}