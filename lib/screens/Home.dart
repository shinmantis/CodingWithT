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
        //color: Colors.amber,
        child: ListView.builder(
            itemCount: products.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                  child: Text(products[index][0]),
                ),
                title: Text(products[index]),
                subtitle: Text(productDetails[index]),
                trailing: Text(price[index].toString()),
                tileColor: Colors.grey.shade50,
                splashColor: Colors.greenAccent,
                //selectedTileColor: Colors.pinkAccent,
                hoverColor: Colors.deepPurpleAccent,
                onTap: (){},);
            }),
      ),
    );
  }
}
