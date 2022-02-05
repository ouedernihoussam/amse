import 'package:asme/detail_film.dart';
import 'package:asme/media.dart';
import 'package:flutter/material.dart';

class FilmItem extends StatelessWidget {
  final Media media;

  const FilmItem({Key? key, required this.media}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => FilmDetail(media)));
      },
      child: Container(
        padding: const EdgeInsets.all(2),
        child: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.network(
                media.image,
              ),
            ),
            Text(
              media.titre,
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
      ),
    );
  }
}
