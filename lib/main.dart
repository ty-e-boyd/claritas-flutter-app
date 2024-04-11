import 'package:aoc_mobile/pages/character_page.dart';
import 'package:aoc_mobile/pages/home_page.dart';
import 'package:aoc_mobile/pages/rulebook_page.dart';
import 'package:aoc_mobile/pages/settings_page.dart';
import 'package:aoc_mobile/pages/store_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
  final screens = [
    const HomePage(),
    const StorePage(),
    const CharacterPage(),
    const RulebookPage(),
    const SettingsPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(widget.title, style: const TextStyle(color: Colors.white)),
      ),
      body: screens[currentPageIndex],
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
              label: 'Settings')
        ],
      ),
    );
  }
}
