import 'package:flutter/material.dart';

class MyTextFormField extends StatelessWidget {
  TextEditingController myController;
  String fieldName;
  IconData myPrefixIcon;
  Color? myPrefixIconColor;


  MyTextFormField({super.key,
    required this.myController,
    required this.fieldName,
    this.myPrefixIcon = Icons.label,
    this.myPrefixIconColor = Colors.blueAccent,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: myController,
      decoration: InputDecoration(
        labelText: fieldName,
        border: const OutlineInputBorder(),
        prefixIcon: Icon(myPrefixIcon, color: myPrefixIconColor),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.deepPurple.shade300),
        ),
        labelStyle: const TextStyle(color: Colors.deepPurple)
      ),
    );
  }
}
