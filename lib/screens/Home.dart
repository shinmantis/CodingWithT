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
        //color: Colors.amber,
        child:  ListView(
          itemExtent: 100.0, //predetermines the size of each cell rather than letting the children determine
          reverse: false, //Makes the listview populate from the bottom so it scrolls upward instead of downward
          scrollDirection: Axis.vertical, //allows you to scroll in portrait/landscape mode, doesn't automatically change the text direction
          children: [
            ListTile(
              tileColor: Colors.black,
              leading: CircleAvatar(child: Icon(Icons.alarm_on_sharp,), backgroundColor: Colors.blue, foregroundColor: Colors.red,),
              title: Text("Sales"),
              subtitle: Text("Sales Of The Week"),
              trailing: Icon(Icons.abc),
              textColor: Colors.grey.shade50,
              iconColor: Colors.red,
              hoverColor: Colors.purple,
              selectedColor: Colors.red,
              selectedTileColor: Colors.grey.shade900,
              onLongPress: (){},
              onTap: (){},

            ),
            ListTile(
              tileColor: Colors.blueGrey,
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
              tileColor: Colors.amber,
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
              tileColor: Colors.deepPurpleAccent,
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
