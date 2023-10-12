import 'package:flutter/material.dart';

enum ProductTypeEnum { Downloadable, Deliverable, Diagonal }

class MyRadioButton extends StatelessWidget {
  MyRadioButton(
      {required this.title,
      required this.value,
      required this.productTypeEnum,
      required this.onChanged,
      super.key});

  //class variables
  String title;
  ProductTypeEnum value;
  ProductTypeEnum? productTypeEnum;
  Function(ProductTypeEnum?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: RadioListTile<ProductTypeEnum>(
        dense: true,
        //Shrinks the tile
        contentPadding: EdgeInsets.all(0.0),
        tileColor: Colors.purple.shade50,
        title: Text(title),
        value: value,
        groupValue: productTypeEnum,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        onChanged: onChanged,
      ),
    );
  }
}
