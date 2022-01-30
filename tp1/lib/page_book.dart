import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class BookPage extends StatelessWidget {
  final List<String> bookImages;

  const BookPage({Key? key, required this.bookImages}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CarouselSlider(
        options: CarouselOptions(enlargeCenterPage: true, enableInfiniteScroll: false, autoPlay: false, height: 500.0),
        items: bookImages
            .map((e) => ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Stack(
                    fit: StackFit.expand,
                    children: <Widget>[
                      Image.network(
                        e,
                        width: 1050,
                        height: 500,
                        fit: BoxFit.cover,
                      )
                    ],
                  ),
                ))
            .toList(),
      ),
    );
  }
}
