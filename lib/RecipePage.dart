import 'package:flutter/material.dart';
import 'recipes.dart';

class RecipePage extends StatelessWidget
{

  final Widget sectionHeader = Container(
    padding: EdgeInsets.only(bottom: 12.0),
    child: Text(
      'Daily Cooking Quest',
      style: TextStyle(
        color: Colors.blueGrey[200],
        fontFamily: 'Roboto',
        fontSize: 14.0
      ),
    ),
  );

  final Widget titleHeader = Container(
    child: Text(recipes[1].name,
      style: TextStyle(
        color:  Colors.blue[900],
        fontSize: 38.0
      ),)
  );

  final Widget centerDisplay = Container(
    height: 350.0,
    child: Row(
        children: <Widget>[
          tagsDisplay,
          rotatingImage
        ],
      ),
  );

  static final Widget tagsDisplay = Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text("Easy"),
      Text("25 mins"),
      Text("+25 exp"),
      Text("Vegetarian")
    ],
  );

  static final Widget rotatingImage = Container(
    child: Image.asset(
      'images/fill.jpg',
      width: 300.0,
      height: 300.0,
    )
  );

  final Widget desciption = Container(
    padding: EdgeInsets.only(right: 115.0),
    child: Text(recipes[1].desc,
    style: TextStyle(
      color: Colors.blueGrey,
      fontSize: 16.0,
    ),),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Recipe Page',
    home: Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(
        brightness: Brightness.light,
        elevation: 0.0,
        backgroundColor: Colors.blueGrey[50] ,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.blueGrey[200]),
          onPressed: () {
          // TODO: go back to previous page[]
          }
        )
      ),
      body: 
        Container(
        width: double.infinity,
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            sectionHeader,
            titleHeader,
            centerDisplay,
            desciption
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.greenAccent[400],
        child: Icon(Icons.arrow_forward, color: Colors.blueGrey[50],),
        onPressed: null,
      ),
    )
  );
  }
}

