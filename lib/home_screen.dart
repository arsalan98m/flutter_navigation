import 'package:flutter/material.dart';
import 'package:flutter_navigation/about_screen.dart';

// Named Routes
class HomeScreen extends StatelessWidget {
  static const String routeName = "/home_screen";

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen"),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              InkWell(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    AboutScreen.routeName,
                    arguments: {
                      'name': 'arsalan',
                      'title': 'About screen',
                    },
                  );
                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.green,
                  ),
                  child: const Center(
                    child: Text("Got to About Screen"),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
