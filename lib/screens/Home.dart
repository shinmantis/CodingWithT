import 'package:flutter/material.dart';


class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
         child: Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Text("Lets Begin"),
             Icon(Icons.add_shopping_cart_outlined),
           ],
         ),
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.all(20.00),
            fixedSize: Size(300, 80),
            textStyle: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
            ),

            backgroundColor: Colors.pinkAccent,
            foregroundColor: Colors.blue,
            elevation: 5,
            side: BorderSide(
              color: Colors.greenAccent,
              style: BorderStyle.solid,
              width: 10,
            ),
            shape: StadiumBorder()
          ),
        ),
      ),
    );
  }
}
