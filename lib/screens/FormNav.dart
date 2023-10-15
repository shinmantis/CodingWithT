import 'package:first_flutter_app/Models/product_model.dart';
import 'package:first_flutter_app/screens/DetailsNav.dart';
import 'package:first_flutter_app/screens/MySubmitButtonFormVersion.dart';
import 'package:first_flutter_app/screens/my_radio_button.dart';
import 'package:first_flutter_app/widgets/mytextformfield.dart';
import 'package:first_flutter_app/screens/MySubmitButton.dart';
import 'package:flutter/material.dart';
import 'package:sodium/sodium.dart';
//import 'package:sodium/sodium.ffi.dart';
//import 'package:sodium/sodium_sumo.dart';
//import 'package:sodium_libs/sodium_libs.dart';
//import 'package:sodium_libs/sodium_libs_sumo.dart';

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {

  //Class Variables
  final _productController = TextEditingController();
  final _productDesController = TextEditingController();
  final _productSizesList = ["Small", "Medium", "Large", "XLarge"];


  //FormState is related to the internal form from flutter not with
  //the classes that were created (like above)
  final _formKey = GlobalKey<FormState>();
  ProductDetails productDetails = ProductDetails()



  bool? _checkBox = false;
  bool? _checkBoxList = false;
  bool? _topProduct = false;
  String _productName = "Add product details in the form below";




  ProductTypeEnum? _productTypeEnum;


  String? _dropdownSelectedValue = ""; //initial value in the list

  //Initializing Functions
  _MyFormState(){
    _dropdownSelectedValue = _productSizesList[0]; //Sets the initial value of the list
  }

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
            const Image(image: AssetImage('images/moneybag.jpg'),height: 150,  alignment: Alignment(-1, 0)), //https://api.flutter.dev/flutter/widgets/Image/alignment.html
            const Text("Select your items", style: TextStyle(fontWeight: FontWeight.bold),),
            const SizedBox(height: 20.00,),

            Form(
                key:_formKey,
                child: Column(
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

            //1.  CheckBoxListTile
            CheckboxListTile(
              title: Text("Top Product"),
              value: _checkBoxList,
              onChanged: (val) {
                setState(() {
                  _checkBoxList = val;
                });
              },
              //changes the side the checkbox is on in the tile
              controlAffinity: ListTileControlAffinity.leading,
            ),


            //2. Radio List Tile
            Row(
              children: [
                MyRadioButton(
                    title: ProductTypeEnum.Deliverable.name,
                    value: ProductTypeEnum.Deliverable,
                    productTypeEnum: _productTypeEnum,
                    onChanged: (val) {
                      setState(() {
                        _productTypeEnum = val;
                      });
                    }),
                MyRadioButton(
                    title: ProductTypeEnum.Downloadable.name,
                    value: ProductTypeEnum.Downloadable,
                    productTypeEnum: _productTypeEnum,
                    onChanged: (val) {
                      setState(() {
                        _productTypeEnum = val;
                      });
                    })
              ],
            ),

            //3 Dropdown Button
            DropdownButtonFormField(
              value: _dropdownSelectedValue,
              decoration: InputDecoration(
                labelText: "Product Sizes",
                prefixIcon: Icon(Icons.accessibility_new_rounded),
                border: OutlineInputBorder(),
              ),
              items: _productSizesList
                  .map((eachItem) => DropdownMenuItem(
                child: Text(eachItem),
                value: eachItem,
              ))
                  .toList(),
              onChanged: (val) {
                setState(() {
                  _dropdownSelectedValue = val as String; //or just val
                });
              },),

              ],
            )),
            

            //myBtn(context), //<--Uses the local function
            //MySubmitButton(context: context, productController: _productController, productDesController: _productDesController)
            MySubmitButtonFormVersion(onPress: (){
              //Validate the form here (flutter decided to be different and use "!" for null checks as opposed to "?"
              if(_formKey.currentState!.validate())
                {
                  //Popup to show the user that something is happening
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Processing Data"))
                  );
                  
                  
                }

            }
            )
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
