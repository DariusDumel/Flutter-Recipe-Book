import 'package:flutter/material.dart';
import 'Recipes.dart';


void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
      // TODO: implement build
      return new MyHomePage();
    }

}

class MyHomePage extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    title: 'Recipe Book',
    home: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black45),
          onPressed: () {
          // TODO: go back to previous page[]
          }
        )
      ),
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Text(
                'Daily Cooking Quest',
              ),
            ),
             Container(
              child: Text(Recipes[1].name)
            )
          ],
            Container(

          )
        ),
      ),
    )
  );
  }
}