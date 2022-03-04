import 'dart:math';

import 'package:flutter/material.dart';

class EX2 extends StatefulWidget {
  const EX2({Key? key}) : super(key: key);

  @override
  State<EX2> createState() => _EX2State();
}

class _EX2State extends State<EX2> {
  double rotateX = 0;
  double rotateZ = 0;
  double scale = 1;
  Matrix4 transform = Matrix4.rotationX(0);
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("EX2"),
      ),
      body: Center(
        child: Column(
          children: [
            Transform(
                transform: transform,
                child: Container(
                  margin: const EdgeInsets.only(top: 20, bottom: 120),
                  width: MediaQuery.of(context).size.width - 200,
                  height: 400,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage("https://picsum.photos/250?image=9"),
                    ),
                  ),
                )),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  buildLabel("Rotate X"),
                  buildSideLabel(-90),
                  Expanded(
                    child: Slider(
                      value: rotateX,
                      min: -90,
                      max: 90,
                      label: scale.round().toString(),
                      onChanged: (rotateX) => setState(() => {
                            this.rotateX = rotateX,
                            transform = Matrix4.rotationX(rotateX * pi / 180)
                          }),
                    ),
                  ),
                  buildSideLabel(90),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(children: [
                buildLabel("Rotate Z"),
                buildSideLabel(-90),
                Expanded(
                    child: Slider(
                  value: rotateZ,
                  min: -90,
                  max: 90,
                  label: scale.round().toString(),
                  onChanged: (rotateZ) => setState(() => {
                        this.rotateZ = rotateZ,
                        transform = Matrix4.rotationZ(rotateZ * pi / 180),
                      }),
                )),
                buildSideLabel(90),
              ]),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  buildLabel("Scale"),
                  buildSideLabel(1),
                  Expanded(
                    child: Slider(
                      value: scale,
                      min: 1,
                      max: 4,
                      label: scale.round().toString(),
                      onChanged: (scale) => setState(() => {
                            this.scale = scale,
                            transform = Matrix4.identity().scaled(scale),
                          }),
                    ),
                  ),
                  buildSideLabel(4),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget buildSideLabel(double value) => Container(
      width: 40,
      margin: const EdgeInsets.only(left: 10, right: 10),
      child: Text(
        value.round().toString(),
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );

Widget buildLabel(String value) => Container(
      width: 70,
      margin: const EdgeInsets.only(left: 10, right: 10),
      child: Text(
        value,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
      ),
    );
