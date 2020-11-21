import 'package:flutter/material.dart';
import 'package:food_app/models/food_item.dart';
import 'package:food_app/models/variables_models.dart';
import 'package:food_app/widgets/Item_detail_widget.dart';
import 'package:food_app/widgets/food_item_widget.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  FoodItemModel detailModel;

  void castItemDetail(FoodItemModel model) {
    setState(() {
      detailModel = model;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<FoodItemModel> recommendedItemsMock = [
      FoodItemModel(
          itemName: 'Tea',
          itemDetail: 'Our tea makes for some of the best morning times'),
      FoodItemModel(
          itemName: 'Coffee', itemDetail: 'Coffee for concerntrating!'),
      FoodItemModel(
          itemName: 'Briyani', itemDetail: 'Briyani for your salty times'),
      FoodItemModel(itemName: 'Rice', itemDetail: 'Normal Food!'),
      FoodItemModel(itemName: 'Mutton', itemDetail: 'Mutton for some fun times')
    ];

    return Scaffold(
      appBar: AppBar(
          backgroundColor: mainTheme.primaryColor,
          elevation: 0.0,
          title: Text(
            'Food App',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 50.0,
              fontFamily: 'BigShoulders',
              color: Color(0xff000000),
            ),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.settings,
                color: Color(0xff000000),
                size: 35.0,
              ),
              onPressed: () {},
            ),
          ]),
      body: Container(
        color: mainTheme.primaryColor,
        child: Column(
          children: <Widget>[
            SizedBox(height: 50.0),
            Container(
              height: 150.0,
              padding: const EdgeInsets.symmetric(
                vertical: 10.0,
              ),

              // Item List View here

              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: recommendedItemsMock.length,
                  itemBuilder: (context, index) {
                    FoodItemModel item = recommendedItemsMock[index];
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 9.0),
                      child: GestureDetector(
                        onTap: () {
                          castItemDetail(recommendedItemsMock[index]);
                        },
                        child: FoodItem(
                          item: item,
                        ),
                      ),
                    );
                  }),
            ),
            SizedBox(height: 30.0),
            ItemDetail(
              detailModel: detailModel,
            ),
          ],
        ),
      ),
    );
  }
}
