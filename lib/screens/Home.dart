import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Home({super.key});

  List<String> products = ["Bed", "Sofa", "Chair"];
  List<String> productDetails = [
    "King size bed",
    "King size sofa",
    "Wooden comfortable Chair"
  ];
  List<int> price = [3000, 2500, 1869];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Stack"),
          centerTitle: true,
          backgroundColor: Colors.black38,
        ),
        backgroundColor: Colors.grey.shade800,
        body: Center(
            child: Stack(
          textDirection: TextDirection.rtl,
          alignment: Alignment.center,
          children: [
            Container(width: 300, height: 200, color: Colors.green),
            Positioned(
              bottom: 0,
              child: Container(width: 150, height: 100, color: Colors.red),
            ),
            Positioned(
                right: 40,
                child: Container(width: 75, height: 50, color: Colors.blue)),
          ],
        )));
  }
}
