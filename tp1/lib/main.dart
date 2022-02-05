import 'package:asme/page_books.dart';
import 'package:asme/page_films.dart';
import 'package:asme/page_sports.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: ASME(),
    );
  }
}

class ASME extends StatefulWidget {
  const ASME({Key? key}) : super(key: key);

  @override
  State<ASME> createState() => _Home();
}

class _Home extends State<ASME> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    FilmsPage(),
    SportsPage(),
    BooksPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.movie_creation_outlined), label: 'Films'),
          BottomNavigationBarItem(icon: Icon(Icons.sports_soccer), label: 'Sports'),
          BottomNavigationBarItem(icon: Icon(Icons.book_outlined), label: 'Livres'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.purple,
        onTap: _onItemTapped,
      ),
    );
  }
}
