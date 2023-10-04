import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true, //does what it says
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
        title: Text("Home"),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart)),
          IconButton(onPressed: () {}, icon: Icon(Icons.wallet))
        ],
        elevation: 10,
        titleSpacing: 20.0,
        centerTitle: true,
        backgroundColor: Colors.greenAccent,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))),
        flexibleSpace: Image(
          image: AssetImage(
            "images/metroid.png",
          ),
          fit: BoxFit.scaleDown,
        ),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Appear Tutorial",
            style: TextStyle(fontSize: 22),
          ),
          Text(
            "Coding with Tea",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.purple),
          )
        ],
      )),
    );
  }
}
