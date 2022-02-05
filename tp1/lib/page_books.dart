import 'package:asme/page_book.dart';
import 'package:flutter/material.dart';

class BooksPage extends StatelessWidget {
  const BooksPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Livres'),
            backgroundColor: const Color(0xFF1a1a2c),
            bottom: const TabBar(
              tabs: [
                Tab(text: "Francais"),
                Tab(text: "Anglais"),
                Tab(text: "Espagnol"),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              BookPage(
                bookImages: [
                  "https://books.google.tn/books/content?id=eq9XvgAACAAJ&printsec=frontcover&img=1&zoom=1&imgtk=AFLRE738mXWvGTsIgAUZ5HSAv8wdIVHp-3kE8dFbvigx7SIiCVPR_0Gav1cBpl16_ClTSkFIPVGPMYT8BpjnMIoZhEEUfc4Q9PxnqIdfIGRdTGQGNWK0z60alRwR0WeCBa0pB0-QPvq2",
                  "https://books.google.tn/books/content?id=mvmGPgAACAAJ&printsec=frontcover&img=1&zoom=1&imgtk=AFLRE71gg8BNhYb2qk3p2zcoebxXLNu6N4svlkDV-mg9GZoByy1kx82D0aT7Thc6iDfZhlXoxPBcKcFABlINY_vSvU5AEENhGrSDTSqwB1QpiZZhlqOF9If7SuddXf5u_ZJ_y2FdLY_4",
                  "https://books.google.tn/books/content?id=qDP6NmRAPzsC&printsec=frontcover&img=1&zoom=1&imgtk=AFLRE70_Ho1cTsmob0RxiXpshNJ_gOA9raZD7hIO1dLtowsDcZ3_x5-Tdb6XKpUhraYEMoMfWe75zrMIFot1qfsKxsB7Do1SXF3Ml8aD7MFQ6ozMxp6x4TENetbefISorLb5S5HIttQE",
                  "https://books.google.tn/books/publisher/content?id=U-1DEAAAQBAJ&printsec=frontcover&img=1&zoom=1&imgtk=AFLRE70Rdf1Z4wmuSeKN8JMj7itq3ZtKSSyp8ruRzyDksnh4vcb9Ds0ng-EBiiupcbWgin-M61YATtRbXVt04X6p3zNTzOqaalxJf0g0UoSh1KFRSKYE6DIGp5GT3DT0rxn1h_fg9GR1",
                  "https://books.google.tn/books/content?id=-2k1Ixul8LUC&printsec=frontcover&img=1&zoom=1&imgtk=AFLRE70P3i3u2vwJzB-Srf1JOrtl1fzOYM09gSQbL5xyJ6cy0Wiw9JsWOMnepkHJIkH5Sdc5zyY7sNEu3wZ_8Tnc4qwqvRcwy5Yzoqw4OOITr-apdCy0mdtdzMjcfUvekIwNUqreP1Ry"
                ],
              ),
              BookPage(
                bookImages: [
                  "https://books.google.tn/books/content?id=eq9XvgAACAAJ&printsec=frontcover&img=1&zoom=1&imgtk=AFLRE738mXWvGTsIgAUZ5HSAv8wdIVHp-3kE8dFbvigx7SIiCVPR_0Gav1cBpl16_ClTSkFIPVGPMYT8BpjnMIoZhEEUfc4Q9PxnqIdfIGRdTGQGNWK0z60alRwR0WeCBa0pB0-QPvq2",
                  "https://books.google.tn/books/content?id=mvmGPgAACAAJ&printsec=frontcover&img=1&zoom=1&imgtk=AFLRE71gg8BNhYb2qk3p2zcoebxXLNu6N4svlkDV-mg9GZoByy1kx82D0aT7Thc6iDfZhlXoxPBcKcFABlINY_vSvU5AEENhGrSDTSqwB1QpiZZhlqOF9If7SuddXf5u_ZJ_y2FdLY_4",
                  "https://books.google.tn/books/content?id=qDP6NmRAPzsC&printsec=frontcover&img=1&zoom=1&imgtk=AFLRE70_Ho1cTsmob0RxiXpshNJ_gOA9raZD7hIO1dLtowsDcZ3_x5-Tdb6XKpUhraYEMoMfWe75zrMIFot1qfsKxsB7Do1SXF3Ml8aD7MFQ6ozMxp6x4TENetbefISorLb5S5HIttQE",
                  "https://books.google.tn/books/publisher/content?id=U-1DEAAAQBAJ&printsec=frontcover&img=1&zoom=1&imgtk=AFLRE70Rdf1Z4wmuSeKN8JMj7itq3ZtKSSyp8ruRzyDksnh4vcb9Ds0ng-EBiiupcbWgin-M61YATtRbXVt04X6p3zNTzOqaalxJf0g0UoSh1KFRSKYE6DIGp5GT3DT0rxn1h_fg9GR1",
                  "https://books.google.tn/books/content?id=-2k1Ixul8LUC&printsec=frontcover&img=1&zoom=1&imgtk=AFLRE70P3i3u2vwJzB-Srf1JOrtl1fzOYM09gSQbL5xyJ6cy0Wiw9JsWOMnepkHJIkH5Sdc5zyY7sNEu3wZ_8Tnc4qwqvRcwy5Yzoqw4OOITr-apdCy0mdtdzMjcfUvekIwNUqreP1Ry"
                ],
              ),
              BookPage(
                bookImages: [
                  "https://books.google.tn/books/content?id=eq9XvgAACAAJ&printsec=frontcover&img=1&zoom=1&imgtk=AFLRE738mXWvGTsIgAUZ5HSAv8wdIVHp-3kE8dFbvigx7SIiCVPR_0Gav1cBpl16_ClTSkFIPVGPMYT8BpjnMIoZhEEUfc4Q9PxnqIdfIGRdTGQGNWK0z60alRwR0WeCBa0pB0-QPvq2",
                  "https://books.google.tn/books/content?id=mvmGPgAACAAJ&printsec=frontcover&img=1&zoom=1&imgtk=AFLRE71gg8BNhYb2qk3p2zcoebxXLNu6N4svlkDV-mg9GZoByy1kx82D0aT7Thc6iDfZhlXoxPBcKcFABlINY_vSvU5AEENhGrSDTSqwB1QpiZZhlqOF9If7SuddXf5u_ZJ_y2FdLY_4",
                  "https://books.google.tn/books/content?id=qDP6NmRAPzsC&printsec=frontcover&img=1&zoom=1&imgtk=AFLRE70_Ho1cTsmob0RxiXpshNJ_gOA9raZD7hIO1dLtowsDcZ3_x5-Tdb6XKpUhraYEMoMfWe75zrMIFot1qfsKxsB7Do1SXF3Ml8aD7MFQ6ozMxp6x4TENetbefISorLb5S5HIttQE",
                  "https://books.google.tn/books/publisher/content?id=U-1DEAAAQBAJ&printsec=frontcover&img=1&zoom=1&imgtk=AFLRE70Rdf1Z4wmuSeKN8JMj7itq3ZtKSSyp8ruRzyDksnh4vcb9Ds0ng-EBiiupcbWgin-M61YATtRbXVt04X6p3zNTzOqaalxJf0g0UoSh1KFRSKYE6DIGp5GT3DT0rxn1h_fg9GR1",
                  "https://books.google.tn/books/content?id=-2k1Ixul8LUC&printsec=frontcover&img=1&zoom=1&imgtk=AFLRE70P3i3u2vwJzB-Srf1JOrtl1fzOYM09gSQbL5xyJ6cy0Wiw9JsWOMnepkHJIkH5Sdc5zyY7sNEu3wZ_8Tnc4qwqvRcwy5Yzoqw4OOITr-apdCy0mdtdzMjcfUvekIwNUqreP1Ry"
                ],
              ),
            ],
          ),
        ));
  }
}
