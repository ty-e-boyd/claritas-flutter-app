import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AoC',
      theme: ThemeData(
        // This is the theme of your application.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Age Of Claritas'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(widget.title, style: const TextStyle(color: Colors.white)),
      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: Colors.indigoAccent,
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
              selectedIcon: Icon(Icons.home, color: Colors.white),
              icon: Icon(Icons.home),
              label: 'Home'),
          NavigationDestination(
              selectedIcon: Icon(Icons.storefront, color: Colors.white),
              icon: Icon(Icons.storefront),
              label: 'Store'),
          NavigationDestination(
              selectedIcon: Icon(Icons.face, color: Colors.white),
              icon: Icon(Icons.face),
              label: 'Character'),
          NavigationDestination(
              selectedIcon: Icon(Icons.book, color: Colors.white),
              icon: Icon(Icons.book),
              label: 'Rulebook'),
          NavigationDestination(
              selectedIcon: Icon(Icons.settings, color: Colors.white),
              icon: Icon(Icons.settings),
              label: 'Profile')
        ],
      ),
      body: <Widget>[
        // Home Page
        const Card(
            shadowColor: Colors.transparent,
            margin: EdgeInsets.all(8.0),
            child: SizedBox.expand(child: Center(child: Text('Home Page')))),
        // Store Page
        const Card(
            shadowColor: Colors.transparent,
            margin: EdgeInsets.all(8.0),
            child: SizedBox.expand(child: Center(child: Text('Store Page')))),
        // Character Management Page
        const Card(
            shadowColor: Colors.transparent,
            margin: EdgeInsets.all(8.0),
            child:
                SizedBox.expand(child: Center(child: Text('Character Page')))),
        // Rulebook and Maps Page
        const Card(
            shadowColor: Colors.transparent,
            margin: EdgeInsets.all(8.0),
            child:
                SizedBox.expand(child: Center(child: Text('Rulebook Page')))),
        // Settings and Profile Page
        const Card(
            shadowColor: Colors.transparent,
            margin: EdgeInsets.all(8.0),
            child: SizedBox.expand(child: Center(child: Text('Profile Page')))),
      ][currentPageIndex],
    );
  }
}
