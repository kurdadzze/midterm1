import 'package:flutter/material.dart';
import '../models/meal.dart';

class MealDetailsScreen extends StatelessWidget {
  static const routeName = "/details-screen";

  final Meal meal;
  final VoidCallback onDelete;

  MealDetailsScreen({
    required this.meal,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Details'),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.delete,
              color: Colors.white,
            ),
            onPressed: onDelete,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
            margin: EdgeInsets.all(18),
          child: Center(
            child: Center(
              child: Column(
                children: [
                  Image.network(meal.imageUrl),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,

                      children: [
                        Text('Name:', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                        Text(meal.name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,),),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Category:', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                            Text(meal.category, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Rating:', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                        Text(meal.rating.toString(), style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                      ],
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.symmetric(vertical: 25),
                      child: Text(
                    meal.description,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  )),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
