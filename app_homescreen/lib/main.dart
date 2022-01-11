import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  //propiedades
  @override
  Widget build(BuildContext context) {
    //variables
    int count = 15;
    var estilosTexto = const TextStyle(
        fontSize: 40, color: Colors.redAccent, fontStyle: FontStyle.italic);
    var estilos = const TextStyle(
        fontSize: 30, color: Colors.grey, fontStyle: FontStyle.italic);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
        backgroundColor: Colors.purple,
      ),
      body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
            Text('Bienvenida', style: estilosTexto),
            const Image(          
              image: NetworkImage('https://img.freepik.com/vector-gratis/lindo-astronauta-dibujos-animados-paz-mano-concepto-icono-tecnologia-espacial-aislado-estilo-dibujos-animados-plana_138676-2184.jpg?size=338&ext=jpg')
              ),
          ])),
          backgroundColor: Colors.purple,
      
    );
  }
}


