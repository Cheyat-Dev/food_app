import 'package:flutter/material.dart';
import 'package:food_app/models/food_item.dart';
import 'package:food_app/widgets/food_item_widget.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<FoodItemModel> recommendedItemsMock = [
    FoodItemModel(itemName: 'Tea'),
    FoodItemModel(itemName: 'Coffee'),
    FoodItemModel(itemName: 'Briyani'),
    FoodItemModel(itemName: 'Rice'),
    FoodItemModel(itemName: 'Mutton'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        elevation: 0.0,
        title: Text(
          'Food App',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 50.0,
            letterSpacing: 1.5,
            fontFamily: 'BigShoulders',
          ),
        ),
      ),
      body: Container(
        color: Theme.of(context).primaryColor,
        child: Column(
          children: <Widget>[
            SizedBox(height: 50.0),
            Container(
              height: 150.0,
              padding: const EdgeInsets.symmetric(
                vertical: 10.0,
              ),
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: recommendedItemsMock.length,
                  itemBuilder: (context, index) {
                    FoodItemModel item = recommendedItemsMock[index];
                    return FoodItem(
                      item: item,
                    );
                  }),
            ),
            SizedBox(height: 30.0),
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(top: 15.0),
                width: MediaQuery.of(context).size.width,
                height: 100.0,
                decoration: BoxDecoration(
                  color: Theme.of(context).accentColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0),
                  ),
                ),
                child: Column(
                  children: <Widget>[
                    Text('Other stuff here'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
