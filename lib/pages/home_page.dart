import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: ListView(
        children: const [
          SizedBox(
              height: 400,
              child: Card(
                  shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.black)),
                  shadowColor: Colors.transparent,
                  margin: EdgeInsets.all(8.0),
                  child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                          padding: EdgeInsets.all(20.0),
                          child: Text(
                            'Welcome to the Age of Claritas',
                            style: TextStyle(fontSize: 24.0),
                          ))))),
          SizedBox(
              height: 200,
              child: Card(
                  shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.black)),
                  shadowColor: Colors.transparent,
                  margin: EdgeInsets.all(8.0),
                  child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                          padding: EdgeInsets.all(20.0),
                          child: Text(
                            'Upcoming Events',
                            style: TextStyle(fontSize: 24.0),
                          ))))),
          SizedBox(
              height: 200,
              child: Card(
                  shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.black)),
                  shadowColor: Colors.transparent,
                  margin: EdgeInsets.all(8.0),
                  child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                          padding: EdgeInsets.all(20.0),
                          child: Text(
                            'Media',
                            style: TextStyle(fontSize: 24.0),
                          ))))),
        ],
      ));
}
