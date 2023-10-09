import 'package:flutter/material.dart';


//Can be changed to stateful if we want the user to modify or update any
//of the values in the page/widget, for now think of this as a static page of
//information.
class DetailsNav extends StatelessWidget {
  DetailsNav({Key? key, required this.productName}) : super(key:key);

  String productName;

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
                title: Text(productName)
              )
            ],
          )
        )
    );
  }
}
