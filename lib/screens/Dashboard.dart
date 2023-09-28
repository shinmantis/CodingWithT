//Always need to import this for all the classes we create
import 'package:flutter/material.dart';


class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Dashboard", style: TextStyle(color: Colors.black)),
          backgroundColor: Colors.pink),
      backgroundColor: Colors.amberAccent,
      body: const Center(
        child: Text.rich(
          TextSpan(text: "My", children: [
            TextSpan(),
            TextSpan(
                text: "Flutter",
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold)),
            TextSpan(
                text: "App",
                style: TextStyle(fontSize: 30, color: Colors.lime)),
          ]),
        ),
      ),
    );
  }
}
