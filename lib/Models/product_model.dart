import 'package:flutter/material.dart';
import 'package:first_flutter_app/screens/my_radio_button.dart';

/*
When to use late ?
In some instances you would not know the value of a variable initially. And the value could possibly be null.

//https://stackoverflow.com/questions/69312956/flutter-late-keyword-with-declaration


 */

class ProductDetails
{
  late String productName;
  late String productDetails;
  late bool isTopProduct;
  late ProductDetails productType;
  late String productSize;
}


