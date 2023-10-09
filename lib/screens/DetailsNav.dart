import 'package:flutter/material.dart';


//Can be changed to stateful if we want the user to modify or update any
//of the values in the page/widget, for now think of this as a static page of
//information.
class DetailsNav extends StatelessWidget {
  const DetailsNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Details"),
      leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back))
      ),
        body: const Center(child: Text("Details Screen"))
    );
  }
}
