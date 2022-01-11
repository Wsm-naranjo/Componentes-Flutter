import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

// This widget is the root
// of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "ListView.separated",
        theme: ThemeData(primarySwatch: Colors.blue),
        debugShowCheckedModeBanner: false,
        home: ListViewBuilder());
  }
}

class ListViewBuilder extends StatelessWidget {
  final _items = List<String>.generate(5, (i) => "elemento $i");

  ListViewBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 5,
      itemBuilder: (context, idx) {
        return Container(
          padding: const EdgeInsets.all(16.0),
          child: Text(_items[idx]),
        );
      },
      separatorBuilder: (context, idx) {
        return const Divider();
      },
    );
  }
}
