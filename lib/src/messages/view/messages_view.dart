import 'package:flutter/material.dart';

class MessagesView extends StatefulWidget {
  const MessagesView({Key? key}) : super(key: key);

  @override
  State<MessagesView> createState() => _MessagesViewState();
}

class _MessagesViewState extends State<MessagesView> {
  final List<String> contacts = [
    'Ali Nour',
    'Kyle Jackson',
    'John Rajesh',
    'Sara John',
    'Jasmine Moore',
    'Peter Parker',
    'Olivia Brown',
    'William White',
    'Lily Brown',
    'Liam Green',
    'Ava Green',
    'Noah Green',
    'Mia Green',
  ]..sort((a, b) => a.length.compareTo(b.length));
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 12,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.blue[900],
              child: Text(contacts[index][0]),
            ),
            title: Text(contacts[index]),
            onTap: () {},
          ),
        );
      },
    );
  }
}
