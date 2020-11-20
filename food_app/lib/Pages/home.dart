import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> recommendedItemsMock = [
    'Coffee',
    'Briyani',
    'Tea',
    'Rice',
    'Chicken Tandoori'
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
              padding: EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 15.0,
              ),
              height: 150.0,
              color: Colors.amberAccent,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: recommendedItemsMock.length,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: Container(
                    width: 120.0,
                    color: Theme.of(context).accentColor,
                    child: Text(recommendedItemsMock[index]),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
