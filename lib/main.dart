import 'package:flutter/material.dart';
import './screen/home_screen.dart';
import './screen/edit_meal_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meals App',
      theme: ThemeData(
          accentColor: Colors.blueAccent,
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.blueAccent),
              )
          )

      ),
      home: HomeScreen(),
      routes: {
        AddNewMealsScreen.routeName: (ctx) => AddNewMealsScreen(),
      },
    );
  }
}
