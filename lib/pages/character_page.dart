import 'package:flutter/material.dart';

class CharacterPage extends StatelessWidget {
  const CharacterPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('My Character'),
        ),
        body: const Card(
            shape:
                RoundedRectangleBorder(side: BorderSide(color: Colors.black)),
            shadowColor: Colors.transparent,
            margin: EdgeInsets.all(8.0),
            child:
                SizedBox.expand(child: Center(child: Text('Character Page')))),
      );
}
