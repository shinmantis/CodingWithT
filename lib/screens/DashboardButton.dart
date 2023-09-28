//Always need to import this for all the classes we create
import 'dart:math';
import 'package:flutter/material.dart';

class DashboardButton extends StatelessWidget {
  const DashboardButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Dashboard", style: TextStyle(color: Colors.black)),
          backgroundColor: Colors.pink),
      backgroundColor: Colors.amberAccent,
      body: Center(
          child: Text("My Random Value Is: ${getNumber()}"),
      ),
    );
  }
}


int getNumber()
{
  return Random().nextInt(100);
}