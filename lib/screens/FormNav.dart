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
      body: Center(
        child: OutlinedButton(
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
        ),
      ),
    );
  }
}
