import 'package:flutter/material.dart';
import 'package:flutter_navigation/contact_screen.dart';

class AboutScreen extends StatelessWidget {
  dynamic data;

  AboutScreen({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${data['title']} ${data['name']}"),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ContactScreen()));
                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.green,
                  ),
                  child: const Center(
                    child: Text("Go to Contact Screen"),
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
