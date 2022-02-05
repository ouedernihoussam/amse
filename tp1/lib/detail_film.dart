import 'package:asme/item_film.dart';
import 'package:asme/media.dart';
import 'package:flutter/material.dart';

class FilmDetail extends StatefulWidget {
  final Media film;

  const FilmDetail(this.film);

  @override
  _FilmDetailState createState() => _FilmDetailState();
}

class _FilmDetailState extends State<FilmDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          widget.film.titre,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      backgroundColor:  const Color(0xFF1a1a2c),
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 500,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    widget.film.image,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      const Color(0xFF1a1a2c),
                      const Color(0xFF1a1a2c).withOpacity(0.8),
                      const Color(0xFF1a1a2c).withOpacity(0.5),
                      Colors.transparent,
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, bottom: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.film.titre,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        widget.film.annee,
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.7),
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: [
                          Text(
                            widget.film.rating.toString(),
                            style: const TextStyle(
                              color: Colors.yellow,
                              fontSize: 17,
                            ),
                          ),
                          const SizedBox(width: 5),
                          ...List.generate(
                            5,
                                (index) => Icon(
                              Icons.star,
                              color: (index < (widget.film.rating / 2).floor())
                                  ? Colors.yellow
                                  : Colors.white,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                "Synopsis",
                style: TextStyle(
                  color: Colors.white.withOpacity(0.7),
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 10,bottom: 30,right: 15),
              child: Text(
                widget.film.desc,
                style: TextStyle(
                  color: Colors.white.withOpacity(0.7),
                  fontSize: 17,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}