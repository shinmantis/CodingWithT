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
        child: Container(
          padding: const EdgeInsets.all(16),
          constraints: const BoxConstraints.expand(width: 330, height: 450),
          decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.white24,
                  offset: Offset(0, 2),
                  spreadRadius: 5,
                  blurRadius: 10,
                ),
              ],
              image: DecorationImage(
                image: AssetImage('images/card-1.jpg'),
                //Don't forget to add the image file to pubpec.yaml
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.all(Radius.circular((10.0)))),

          //CHILD
          child: Stack(
            children: [
              Text(
                "Editor's Choice",
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 18,
                ),
              ),
              Positioned(
                top:20.0,
                child: Text(
                  "The Art of Making Coffee",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                  ),
                ),
              ),
              Positioned(
                right: 0,
                bottom:20,
                child: Text(
                  "Learn to make the perfect coffee",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
              Positioned(
                right: 0,
                bottom: 0,
                child: Text(
                  "Coding with T",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
