import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
import 'Tile.dart';

class EX5C extends StatefulWidget {
  const EX5C({Key? key}) : super(key: key);

  @override
  State<EX5C> createState() => _EX5CState();
}

class _EX5CState extends State<EX5C> {
  double sliderValue = 3;
  double size = 3;
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
        title: const Text("Ex 5c"),
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 50, right: 20, left: 20),
            child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 5.0,
                  mainAxisSpacing: 5.0,
                ),
                itemCount: sliderValue.round(),
                itemBuilder: (context, index) {
                  return InkWell(child: tiles[index].croppedImageTile());
                }),
          ),
          SfSlider(
            min: 3,
            max: 9,
            stepSize: 1,
            interval: 1,
            showTicks: true,
            showLabels: true,
            enableTooltip: true,
            value: sliderValue,
            onChanged: (dynamic newValue) {
              setState(() {
                sliderValue = newValue;
              });
            },
          )
        ],
      ),
    );
  }
}
