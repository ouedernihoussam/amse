import 'package:flutter/material.dart';

class EX5A extends StatelessWidget {
  EX5A({Key? key}) : super(key: key);

  final List<Color> colors = [
    Colors.red,
    Colors.cyan,
    Colors.pink,
    Colors.purple,
    Colors.blue,
    Colors.deepOrangeAccent,
    Colors.yellowAccent,
    Colors.lime,
    Colors.lightGreen
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ex 5a"),
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
            return Container(
              color: colors[index],
              child: Center(
                  child: Text(
                "Tile ${index + 1}",
                style: const TextStyle(color: Colors.white, fontSize: 16),
              )),
            );
          },
        ),
      ),
    );
  }
}
