import 'package:flutter/material.dart';
import '../models/meal.dart';
import '../repository/meal_helper.dart';

class AddNewMealsScreen extends StatelessWidget {
  static const routeName = "/edit-meal-screen";
  final _formKey = GlobalKey<FormState>();

  TextEditingController mealID = TextEditingController();
  TextEditingController mealName = TextEditingController();
  TextEditingController mealDescription = TextEditingController();
  TextEditingController mealRating = TextEditingController();
  TextEditingController mealCategory = TextEditingController();
  TextEditingController mealUrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Add Meals'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 15, right: 15, top: 15,),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
            Card(
            child: TextFormField(
            controller: mealID,
              decoration: InputDecoration(hintText: "Please enter id"),
              keyboardType: TextInputType.number,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Please enter valid id";
                }
                return null;
              },
            ),
          ),
          Card(
            child: TextFormField(
              controller: mealName,
              decoration: InputDecoration(hintText: "Please enter name"),
              keyboardType: TextInputType.number,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Please enter valid name";
                }
                return null;
              },
            ),
          ),
          Card(
            child: TextFormField(
              controller: mealDescription,
              decoration: InputDecoration(hintText: "Please enter description"),
              keyboardType: TextInputType.number,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Please enter valid description";
                }
                return null;
              },
            ),
          ),
          Card(
            child: TextFormField(
              controller: mealRating,
              decoration: InputDecoration(hintText: "Please enter rating"),
              keyboardType: TextInputType.number,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Please enter valid rating";
                }
                return null;
              },
            ),
          ),
          Card(
            child: TextFormField(
              controller: mealCategory,
              decoration: InputDecoration(hintText: "Please enter category"),
              keyboardType: TextInputType.number,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Please enter valid category";
                }
                return null;
              },
            ),
          ),
          Card(
            child: TextFormField(
              controller: mealUrl,
              decoration: InputDecoration(hintText: "Please enter url"),
              keyboardType: TextInputType.number,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Please enter valid url";
                }
                return null;
              },
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                    textStyle: TextStyle(
                        fontSize: 20,
                        )),
                onPressed: () => Navigator.pop(context),
                child: Text("Back"),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                    textStyle: TextStyle(
                        fontSize: 20,
                        )),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    Meal meal = Meal(id: int.parse(mealID.text),
                        name: mealName.text,
                        imageUrl: mealUrl.text,
                        description: mealDescription.text,
                        rating: double.parse(mealRating.text),
                        category: mealCategory.text,
                    );
                    MealRepository().addMovie(meal);
                    Navigator.pop(context);
                  }
                },
                child: Text('Add'),
              ),
                ],
              ),
            ],
          ),
        ),
      ),
    ),);
  }
}
