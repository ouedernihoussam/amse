import 'package:flutter/material.dart';
import 'package:tp2/Tile.dart';

class EX5B extends StatelessWidget {
  EX5B({Key? key}) : super(key: key);

  final List<Tile> tiles = [
    Tile(
        imageURL: 'https://picsum.photos/512',
        alignment: const Alignment(-1, -1)),
    Tile(
        imageURL: 'https://picsum.photos/512',
        alignment: const Alignment(0, -1)),
    Tile(
        imageURL: 'https://picsum.photos/512',
        alignment: const Alignment(1, -1)),
    Tile(
        imageURL: 'https://picsum.photos/512',
        alignment: const Alignment(-1, 0)),
    Tile(
        imageURL: 'https://picsum.photos/512',
        alignment: const Alignment(0, 0)),
    Tile(
        imageURL: 'https://picsum.photos/512',
        alignment: const Alignment(1, 0)),
    Tile(
        imageURL: 'https://picsum.photos/512',
        alignment: const Alignment(-1, 1)),
    Tile(
        imageURL: 'https://picsum.photos/512',
        alignment: const Alignment(0, 1)),
    Tile(
        imageURL: 'https://picsum.photos/512',
        alignment: const Alignment(1, 1)),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ex 5b"),
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 50, right: 20, left: 20),
        child: GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 5.0,
            mainAxisSpacing: 5.0,
          ),
          itemCount: 9,
          itemBuilder: (context, index) {
            return InkWell(
              child: tiles[index].croppedImageTile(),
            );
          },
        ),
      ),
    );
  }
}
