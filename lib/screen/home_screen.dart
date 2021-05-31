import 'package:flutter/material.dart';
import 'package:midterm1/models/meal.dart';
import 'package:midterm1/screen/edit_meal_screen.dart';
import 'package:midterm1/screen/meal_detail.dart';
import 'package:midterm1/widget/main_list_item.dart';
import '../data/dumy_data.dart';
import '../repository/meal_helper.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Meal> mealList = DUMMY_DATA;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Meals'),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.add,
              color: Colors.white,
            ),
            onPressed: () => Navigator.pushNamed(context, AddNewMealsScreen.routeName).then((_) {
              setState(() {});
            }),
          )
        ],
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          var meal = mealList[index];
          return GestureDetector(
            onTap: () => Navigator.push(
              context,
             MaterialPageRoute(builder: (BuildContext context) {
               return  MealDetailsScreen(meal: meal,onDelete: ()async{
                 final deleted = await delete(meal);
                 if(deleted == true){
                   Navigator.of(context).pop();
                 }
                 print(deleted);

               },);
             })

            ),
            child: MainListItem(
              imageUrl: meal.imageUrl,
              title: meal.name,
              id: meal.id.toString(),
              rating: meal.rating.toString(),
            ),
          );
        },
        itemCount: mealList.length,
      ),
    );
  }

   Future<bool> delete(Meal meal) async {
    return await  showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text('Are you sure?'),
        content: Text('Do you really want to delete this meal?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: Text("NO"),
          ),
          TextButton(
              onPressed: () {
                setState(() {
                  MealRepository().removeMeal(meal.id);
                  Navigator.pop(context, true);
                });
              },
              child: Text("YES"))
        ],
      ),
    );
  }
}
