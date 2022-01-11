import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListTile',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget  {
 List<Plantilla> strings = [
    Plantilla('Hijo 1'),
    Plantilla('Hijo 2'),
    Plantilla('Hijo 3'),
    Plantilla('Hijo 4'),
    Plantilla('Hijo 5'),
    Plantilla('Hijo 6'),
    Plantilla('Hijo 7'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ListTile ejemplo')),
      body: Column(
          children: strings.map((quote) => quote).toList()
      ),
    );
  }
}

class Plantilla extends StatelessWidget {
  final String text;

   Plantilla(this.text);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(this.text),
      leading: Icon(Icons.supervised_user_circle_outlined),
      subtitle: Text('Subtitulo opcional'),
    );
  }
}
