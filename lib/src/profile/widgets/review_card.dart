import 'package:flutter/material.dart';

class ReviewCard extends StatefulWidget {
  final int numberOfStars;
  final String text;
  const ReviewCard({Key? key, required this.numberOfStars, required this.text})
      : super(key: key);

  @override
  State<ReviewCard> createState() => _ReviewCardState();
}

class _ReviewCardState extends State<ReviewCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Colors.green[100],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(widget.numberOfStars, (index) {
                  return const Icon(
                    Icons.star,
                    color: Colors.green,
                  );
                }),
                ...List.generate((5 - widget.numberOfStars), (index) {
                  return const Icon(
                    Icons.star_border,
                    color: Colors.green,
                  );
                }),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                widget.text,
                textAlign: TextAlign.start,
                style: const TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.green),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ));
  }
}
