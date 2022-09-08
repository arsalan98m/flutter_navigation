import 'package:flutter/material.dart';
import 'package:flutter_navigation/about_screen.dart';
import 'package:flutter_navigation/contact_screen.dart';
import 'package:flutter_navigation/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Named Routes',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        HomeScreen.routeName: (context) => const HomeScreen(),
        AboutScreen.routeName: (context) => const AboutScreen(),
        ContactScreen.routeName: (context) => const ContactScreen(),
      },
      initialRoute: HomeScreen.routeName,
    );
  }
}
