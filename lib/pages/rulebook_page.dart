import 'package:flutter/material.dart';

class RulebookPage extends StatelessWidget {
  const RulebookPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Rulebook'),
        ),
        body: const Card(
            shape:
                RoundedRectangleBorder(side: BorderSide(color: Colors.black)),
            shadowColor: Colors.transparent,
            margin: EdgeInsets.all(8.0),
            child:
                SizedBox.expand(child: Center(child: Text('Rulebook Page')))),
      );
}
