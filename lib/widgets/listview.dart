import 'package:flutter/material.dart';


class ListTileWidget extends StatelessWidget {
  //arguments here!
  String title, subTitle; //<---required (see below)
  IconData leadingIcon, trailingIcon; //<---optional
  Color? listTileColor, iconColor; //<---can be null
  ListTileWidget({
  required  this.title,
  required  this.subTitle,
    this.leadingIcon = Icons.label,
    this.trailingIcon = Icons.add_shopping_cart,
  required  this.listTileColor,
    this.iconColor,
});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ListTile(
        tileColor: listTileColor,
        shape: ContinuousRectangleBorder(borderRadius: BorderRadius.circular(20),
            side: BorderSide(
                width: 1.0,
                color: Colors.blue
            )),
        leading: IconButton(
          icon: Icon(leadingIcon),
          onPressed: () {},
          color: iconColor
        ),
        title: Text(
          title,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(subTitle),
        trailing: IconButton(
          icon: Icon(trailingIcon),
          onPressed: () {},
        ),
      ),
    );
  }
}