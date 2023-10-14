import 'package:flutter/material.dart';
import 'package:first_flutter_app/screens/DetailsNav.dart';

class MySubmitButton extends StatelessWidget {
  final BuildContext context;
  final TextEditingController _productController;
  final TextEditingController _productDesController;

  //constructor
  const MySubmitButton({
    Key? key,
    required this.context,
    required TextEditingController productController,
    required TextEditingController productDesController,
  }) : _productController = productController,
        _productDesController = productDesController;

  /***
   * According to bard it is better to pass the controller to the
   * class widget so it can see any changes made to the text field.
   * This is more efficient than passing controller values/text as arguments.
   */



  @override
  Widget build(BuildContext context) {
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
              return DetailsNav(productName: _productController.text);
            },
          ),
        );
      },
    );
  }
}


