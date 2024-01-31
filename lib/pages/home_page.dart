import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
        ),
        body: const Card(
            shadowColor: Colors.transparent,
            margin: EdgeInsets.all(8.0),
            child: SizedBox.expand(child: Center(child: Text('Home Page')))),
      );
}
