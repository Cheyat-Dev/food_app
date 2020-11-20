import 'package:flutter/material.dart';
import 'package:food_app/models/food_item.dart';

class FoodItem extends StatefulWidget {
  final FoodItemModel item;
  FoodItem({this.item});

  @override
  _FoodItemState createState() => _FoodItemState();
}

class _FoodItemState extends State<FoodItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 9.0),
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 10.0,
        ),
        decoration: BoxDecoration(
          color: Theme.of(context).accentColor,
          borderRadius: BorderRadius.circular(20.0),
        ),
        width: 120.0,
        child: Text(widget.item.itemName),
      ),
    );
  }
}
