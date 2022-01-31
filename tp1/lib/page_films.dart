import 'package:asme/films.dart';
import 'package:asme/item_film.dart';
import 'package:flutter/material.dart';

class FilmsPage extends StatelessWidget {
  const FilmsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Films'),
        backgroundColor: const Color(0xFF1a1a2c),
      ),
      body: GridView(
        padding: const EdgeInsets.all(25),
        children: films
            .map((film) => FilmItem(
                  media: film,
                ))
            .toList(),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 280,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            mainAxisExtent: 200),
      ),
    );
  }
}
