import 'package:first_flutter_app/screens/DetailsNav.dart';
import 'package:first_flutter_app/widgets/mytextformfield.dart';
import 'package:flutter/material.dart';

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  String _productName = "Add product details in the form below";
  final _productController = TextEditingController();
  final _productDesController = TextEditingController();
  bool? _checkBox = false;
  bool? _checkBoxList = false;

  //Clean up the controller so we don't end up with memory leaks
  @override
  void dispose() {
    _productController.dispose();
    _productDesController.dispose();
    super.dispose();
  }

  void _updateText() {}

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
            MyTextFormField(
              myController: _productController,
              fieldName: "Product Name",
              myPrefixIcon: Icons.propane_outlined,
              myPrefixIconColor: Colors.deepPurple.shade300,
            ),

            SizedBox(height: 10.0),

            MyTextFormField(
              myController: _productDesController,
              fieldName: "Product Description",
              myPrefixIcon: Icons.description_outlined,
              myPrefixIconColor: Colors.deepPurple.shade300,
            ),

            SizedBox(height: 10.0),

            //Two Types of Checkboxes

            //1.  CheckBox
            Checkbox(
                tristate: true,
                //True, False, Null
                checkColor: Colors.green,
                activeColor: Colors.white,
                value: _checkBox,
                onChanged: (val) {
                  setState(() {
                    _checkBox = val;
                  });
                }),

            //2.  CheckBoxListTile
            CheckboxListTile(
              title: Text("Top Product"),
                value: _checkBoxList,
                onChanged: (val) {
                  setState(() {
                    _checkBoxList = val;
                  });
                },
              //changes the side the checkbox is on in the tile
            controlAffinity: ListTileControlAffinity.leading,),

            myBtn(context),
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
              return DetailsNav(productName: _productController.text);
            },
          ),
        );
      },
    );
  }
}
