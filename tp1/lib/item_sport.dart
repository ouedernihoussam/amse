import 'package:asme/media.dart';
import 'package:flutter/material.dart';

import 'detail_sports.dart';

class SportsItem extends StatelessWidget {
  final Media media;

  const SportsItem({Key? key, required this.media}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => SportsNewsDetail(media)));
      },
      child: Container(
        padding: const EdgeInsets.all(5),
        child: Card(
          child: Row(children: [
            Image.network(
              media.image,
              fit: BoxFit.fill,
              height: 100,
              width: 100,
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Text(
                media.titre,
                style: const TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ))
          ]),
        ),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
      ),
    );
  }
}
