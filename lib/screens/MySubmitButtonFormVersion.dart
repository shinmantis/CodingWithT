import 'package:flutter/material.dart';
import 'package:first_flutter_app/screens/DetailsNav.dart';

class MySubmitButtonFormVersion extends StatelessWidget {
  final VoidCallback onPress;

  //constructor
  const MySubmitButtonFormVersion({
    Key? key,
    required this.onPress
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        minimumSize: const Size(200, 50),
      ),
      child: Text("Submit Form".toUpperCase(),
          style: const TextStyle(fontWeight: FontWeight.bold)),
      onPressed: onPress,
    );
  }
}
