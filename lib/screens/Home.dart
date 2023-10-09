import 'package:flutter/material.dart';
import '../widgets/listview.dart';


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
        title: Text("Custom Widget"),
        centerTitle: true,
      ),
      body: ListView(children: [
        ListTileWidget(title: "foo", subTitle: "fee", leadingIcon:Icons.mobile_friendly, listTileColor:Colors.white , iconColor: Colors.orange, trailingIcon: Icons.ac_unit),
        ListTileWidget(title: "Ace", subTitle: "Spade", leadingIcon:Icons.heart_broken, listTileColor:Colors.grey.shade300 , iconColor: Colors.red, trailingIcon: Icons.shopping_bag),
        ListTileWidget(title: "Barr", subTitle: "bat", leadingIcon:Icons.bathtub, listTileColor:Colors.green , iconColor: Colors.yellow, trailingIcon: Icons.access_time),

      ]),
    );
  }
}

