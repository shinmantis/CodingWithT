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
          title: const Text("Dashboard",
              style: TextStyle(
                color: Colors.black,
              )),
          backgroundColor: Colors.pink),
      backgroundColor: Colors.amberAccent,
      /*body: const Center(
        child:Image(
            image: AssetImage("images/metroid.png")*/
      body: Center(
        child: IconButton(
          icon: Icon(
            FontAwesomeIcons.wallet,
          ),
          onPressed: (){},
          iconSize: 100,
          color: Colors.blue,
          hoverColor: Colors.red,
          highlightColor: Colors.pink,
          splashColor: Colors.black,
        ),
      ),
    );
  }
}



int getNumber() {
  return Random().nextInt(100);
}
