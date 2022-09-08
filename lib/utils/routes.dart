import 'package:flutter/material.dart';
import 'package:flutter_navigation/about_screen.dart';
import 'package:flutter_navigation/contact_screen.dart';
import 'package:flutter_navigation/home_screen.dart';
import 'package:flutter_navigation/utils/routes_name.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.homeScreen:
        return MaterialPageRoute(builder: (context) => const HomeScreen());

      case RouteName.aboutScreen:
        return MaterialPageRoute(
          builder: (context) => AboutScreen(
            data: settings.arguments as Map,
          ),
        );

      case RouteName.contactScreen:
        return MaterialPageRoute(builder: (context) => const ContactScreen());

      default:
        return MaterialPageRoute(builder: (context) {
          return const Scaffold(
            body: Center(
              child: Text("No Route Defined"),
            ),
          );
        });
    }
  }
}
