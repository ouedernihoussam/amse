import 'package:flutter/material.dart';

class EX1 extends StatelessWidget {
  const EX1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(
      "https://picsum.photos/512/1024",
      fit: BoxFit.fill,
    );
  }
}
