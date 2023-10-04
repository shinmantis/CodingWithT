import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBodyBehindAppBar: true, //does what it says
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
      body: Container(
        color: Colors.amber,
        child: Column(
          children: [
            Row(
              children: [
                Expanded(child: Image(image: AssetImage("images/metroid.png"))),
                Expanded(flex: 2,child: Image(image: AssetImage("images/metroid.png"))),
                Expanded(child: Image(image: AssetImage("images/metroid.png")))
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Icon(Icons.star_border),
              Icon(Icons.star_border),
              Icon(Icons.star_border),
              Icon(Icons.star_border),
              Icon(Icons.star_border),
            ]),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(children: [
                  Icon(Icons.phone, size: 35.00),
                  Text(
                    "Phone",
                  ),
                ]),
                Column(children: [
                  Icon(Icons.alt_route, size: 35.00),
                  Text(
                    "route",
                  ),
                ]),
                Column(children: [
                  Icon(Icons.share, size: 35.00),
                  Text(
                    "share",
                  ),
                ]),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
