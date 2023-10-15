import 'package:first_flutter_app/Models/product_model.dart';
import 'package:flutter/material.dart';


//Can be changed to stateful if we want the user to modify or update any
//of the values in the page/widget, for now think of this as a static page of
//information.
class DetailsNav extends StatelessWidget {

  DetailsNav({Key? key, required this.productName}) : super(key:key);
  DetailsNav.dataObject({Key? key, required this.productDetails}) : super(key:key);

  //Notice instead of passing a specific type, we can actually pass a data object
  //that contains the specific types.  We have to change the string type to be
  //nullable since we aren't initializing it on startup due to the fact that we
  //now have a choice of which constructor we want to use.  The result is that
  //one of these may be null on instantiation.

  String? productName;
  ProductDetails? productDetails;

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
        body: Container(
          padding: EdgeInsets.all(20.0),
          child: ListView(
            children: [
              ListTile(
                leading: Icon(Icons.account_balance_wallet_outlined),
                title: Text(productDetails!.productName) //note we now have to address a possible null object check here since we have multiple constructors.
              )
            ],
          )
        )
    );
  }
}
