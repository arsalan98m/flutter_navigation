import 'package:flutter/material.dart';
import 'package:flutter_navigation/about_screen.dart';
import 'package:flutter_navigation/contact_screen.dart';
import 'package:flutter_navigation/home_screen.dart';
import 'package:flutter_navigation/utils/routes.dart';
import 'package:flutter_navigation/utils/routes_name.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Advanced Named Routes with onGenerateRoute',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: Routes.generateRoute,
      initialRoute: RouteName.homeScreen,
    );
  }
}
