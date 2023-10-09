import 'package:first_flutter_app/screens/DetailsNav.dart';
import 'package:flutter/material.dart';

class MyForm extends StatefulWidget {
  const MyForm({super.key});



  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  String _productName = "";
  final _productController = TextEditingController();



  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _productController.addListener(_updateText);

  }

  void _updateText(){
    setState(() {
      _productName = _productController.text;
    });
  }


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
            TextFormField(
              /* Uncomment to use.  Useful but not recommended.  Use a controller
              //When the form field changes, that new value is passed to the
              //onChanged event as val, val is then fed into the private method
              //_updateText which takes the value inside val.  The private method
              //then updates the private _productName value.  setState then
              //rebuild the widget and the new value is displayed.
              onChanged: (val){
                _updateText(val);
              }*/
          controller: _productController
          ,
              decoration: InputDecoration(
                labelText: "Some really cool label",
                icon: Icon(Icons.verified_user_outlined),
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.handshake),
              ),
            ),
            Text("Product Name is ${_productController.text}")
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
