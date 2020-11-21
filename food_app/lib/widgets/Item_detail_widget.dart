import 'package:flutter/material.dart';
import 'package:food_app/models/food_item.dart';
import 'package:food_app/models/variables_models.dart';

class ItemDetail extends StatefulWidget {
  final FoodItemModel detailModel;
  ItemDetail({this.detailModel});

  @override
  _ItemDetailState createState() => _ItemDetailState();
}

class _ItemDetailState extends State<ItemDetail> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.only(top: 15.0),
        width: MediaQuery.of(context).size.width,
        height: 100.0,
        decoration: BoxDecoration(
          color: mainTheme.accentColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
        ),
        child: widget.detailModel == null
            ? Center(
                child: Text(
                  'No Items Selected',
                  style: headStyle,
                ),
              )
            : Container(
                child: Column(
                  children: <Widget>[
                    Text(
                      widget.detailModel.itemName,
                      style: headStyle,
                    ),
                    SizedBox(height: 20.0),
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Row(
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(width: 6.0),
                            ),
                            child: CircleAvatar(
                              radius: 100.0,
                              backgroundImage: AssetImage(
                                'assets/${widget.detailModel.itemName}.jpg',
                              ),
                            ),
                          ),
                          Flexible(
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(7.0, 0, 0, 0),
                              child: Text(
                                widget.detailModel.itemDetail,
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontFamily: 'BigShoulders',
                                  letterSpacing: 2.0,
                                  color: mainTheme.fontColor,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}
