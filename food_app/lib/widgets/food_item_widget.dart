import 'package:flutter/material.dart';
import 'package:food_app/models/food_item.dart';
import 'package:food_app/models/variables_models.dart';

class FoodItem extends StatefulWidget {
  final FoodItemModel item;

  FoodItem({this.item});

  @override
  _FoodItemState createState() => _FoodItemState();
}

class _FoodItemState extends State<FoodItem> {
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 10),
      padding: EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 10.0,
      ),
      decoration: BoxDecoration(
        color: mainTheme.accentColor,
        borderRadius: BorderRadius.circular(20.0),
      ),
      width: 120.0,
      child: Column(
        children: [
          Center(
            child: Text(
              widget.item.itemName,
              style: headStyle,
            ),
          ),
          SizedBox(height: 10.0),
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                width: 2.0,
                color: mainTheme.fontColor,
              ),
            ),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/${widget.item.itemName}.jpg'),
            ),
          ),
        ],
      ),
    );
  }
}
