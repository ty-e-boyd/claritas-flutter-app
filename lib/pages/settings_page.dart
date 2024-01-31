import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Settings'),
        ),
        body: const Card(
            shape:
                RoundedRectangleBorder(side: BorderSide(color: Colors.black)),
            shadowColor: Colors.transparent,
            margin: EdgeInsets.all(8.0),
            child:
                SizedBox.expand(child: Center(child: Text('Settings Page')))),
      );
}
