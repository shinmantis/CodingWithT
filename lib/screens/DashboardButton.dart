//Always need to import this for all the classes we create
import 'dart:ffi';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DashboardButton extends StatelessWidget {
  const DashboardButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            "Dashboard",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          backgroundColor: Colors.pink),
      backgroundColor: Colors.amberAccent,
      body: Container(
        child: Text(
          "Boring",
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        width: 350.0,
        height: 250.0,
        padding: EdgeInsets.all(5.0),
        margin: EdgeInsets.all(5.0),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            // borderRadius: BorderRadius.circular(10.0),
            color: Colors.purpleAccent,
            border: Border.all(color: Colors.green, width: 5),
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage(
                "images/metroid.png",
              ),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 7,
                spreadRadius: 5,
                offset: Offset(4,4),
              ),
            ]),
      ),
    );
  }
}

int getNumber() {
  return Random().nextInt(100);
}
