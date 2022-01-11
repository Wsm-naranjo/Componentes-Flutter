import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {

  const MyApp({Key? key}) : super(key: key);

// This widget is the root
// of your application.
  @override
  Widget  build(BuildContext context) {
    return MaterialApp(
        title: "ListView.builder",
        theme:  ThemeData(primarySwatch: Colors.blue),
        debugShowCheckedModeBanner: false,
        home: const ListViewBuilder());
        
  }
}

class ListViewBuilder extends StatelessWidget {
  
  const ListViewBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("ListView.builder")),
      body: ListView.builder(
          itemCount: 4,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
                leading: const Icon(Icons.list),
                trailing:const Text(
                  "Objeto",
                  style: TextStyle(color: Colors.green, fontSize: 15),
                ),
                title: Text("Lista elemento $index"));
          }),
    );
  }
}
