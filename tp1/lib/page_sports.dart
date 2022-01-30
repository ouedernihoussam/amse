import 'package:asme/item_sport.dart';
import 'package:asme/sports_news.dart';
import 'package:flutter/material.dart';

class SportsPage extends StatelessWidget {
  const SportsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Sports'),
          backgroundColor: const Color(0xFF1a1a2c),
        ),
        body: ListView(
          children: sportsNews
              .map((film) => SportsItem(
                    media: film,
                  ))
              .toList(),
        ));
  }
}
