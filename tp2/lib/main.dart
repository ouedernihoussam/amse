import 'package:flutter/material.dart';
import 'package:tp2/ex1.dart';
import 'package:tp2/ex2.dart';
import 'package:tp2/ex4.dart';
import 'package:tp2/ex5a.dart';
import 'package:tp2/ex5b.dart';
import 'package:tp2/ex5c.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TP2',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> exercices = [
    "Exercice 1",
    "Exercice 2",
    "Exercice 4",
    "Exercice 5a",
    "Exercice 5b",
    "Exercice 5c",
  ];
  List<String> descriptions = [
    "Afficher une image",
    "Transformer une image",
    "Affichage d'une tuile",
    "Génération du plateau de tuiles",
    "Génération du plateau de tuiles à partir d'une image",
    "Génération du plateau de tuiles personnalisable",
  ];
  List<Widget> pages = [
    const EX1(),
    const EX2(),
    const EX4(),
    EX5A(),
    EX5B(),
    const EX5C(),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Padding(
            padding: const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
            child: Card(
              child: ListTile(
                onTap: () => {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => pages[index]))
                },
                title: Text(exercices[index]),
                subtitle: Text(descriptions[index]),
              ),
            ));
      },
      itemCount: 6,
    );
  }
}
