import 'package:first_flutter_app/screens/DetailsNav.dart';
import 'package:flutter/material.dart';

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Form"),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(20.00),
        child: ListView(
          children: [
            TextField(
                decoration: InputDecoration(
                    hintText: "Some really cool hint",
                    icon: Icon(Icons.verified_user_outlined),
                    prefixIcon: Icon(Icons.fingerprint))),
            Text(""),
            TextFormField(
              decoration: InputDecoration(
                  labelText: "Some really cool label",
                  icon: Icon(Icons.verified_user_outlined),
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.handshake)),
            ),
          ],
        ),
      ),
    );
  }

  OutlinedButton myBtn(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        minimumSize: const Size(200, 50),
      ),
      child: Text("Submit Form".toUpperCase(),
          style: const TextStyle(fontWeight: FontWeight.bold)),
      onPressed: () {
        //Navigator works like "Intent" in android for moving between activities/screens
        ////Pushes a new screen on top of the existing screen
        Navigator.push(
          context, //Move from the context of the current class to the new class
          MaterialPageRoute(
            builder: (context) {
              return DetailsNav();
            },
          ),
        );
      },
    );
  }
}
