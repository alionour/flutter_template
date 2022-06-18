import 'package:flutter/material.dart';

class ContactItemCard extends StatefulWidget {
  final IconData iconData;
  final String text;
  const ContactItemCard({Key? key, required this.iconData, required this.text})
      : super(key: key);

  @override
  State<ContactItemCard> createState() => _ContactItemCardState();
}

class _ContactItemCardState extends State<ContactItemCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Colors.green[100],
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        widget.iconData,
                        color: Colors.green,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        widget.text,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.green),
                      ),
                    ],
                  ),
                  // Row(
                  //   children: const [
                  //     Icon(
                  //       Icons.delete_sweep,
                  //       color: Colors.green,
                  //     ),
                  //     SizedBox(
                  //       width: 10,
                  //     )
                  //   ],
                  // ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ));
  }
}
