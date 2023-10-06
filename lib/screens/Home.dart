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
        child:  ListView(
          children: [
            ListTile(
              tileColor: Colors.black,
              leading: Icon(Icons.alarm_on_sharp),
              title: Text("Sales"),
              subtitle: Text("Sales Of The Week"),
              trailing: Icon(Icons.abc),
              textColor: Colors.white,
              iconColor: Colors.red,
              hoverColor: Colors.purple,
              selectedColor: Colors.red,
              selectedTileColor: Colors.grey,
              onLongPress: (){},
              onTap: (){},

            ),
            ListTile(
              leading: Icon(Icons.airplane_ticket),
              title: Text("Sales"),
              subtitle: Text("Sales Of The Week"),
              trailing: Icon(Icons.abc),
              textColor: Colors.white,
              iconColor: Colors.red,
              hoverColor: Colors.purple,
              selectedColor: Colors.red,
              selectedTileColor: Colors.grey,
              onLongPress: (){},
              onTap: (){},

            ),
            ListTile(
              leading: Icon(Icons.car_crash),
              title: Text("Sales"),
              subtitle: Text("Sales Of The Week"),
              trailing: Icon(Icons.abc),
              textColor: Colors.white,
              iconColor: Colors.red,
              hoverColor: Colors.purple,
              selectedColor: Colors.red,
              selectedTileColor: Colors.grey,
              onLongPress: (){},
              onTap: (){},

            ),
            ListTile(
              leading: Icon(Icons.food_bank),
              title: Text("Sales"),
              subtitle: Text("Sales Of The Week"),
              trailing: Icon(Icons.abc),
              textColor: Colors.white,
              iconColor: Colors.red,
              hoverColor: Colors.purple,
              selectedColor: Colors.red,
              selectedTileColor: Colors.grey,
              onLongPress: (){},
              onTap: (){},

            )
          ],
        ),
      ),
    );
  }
}
