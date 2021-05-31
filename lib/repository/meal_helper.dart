import 'package:flutter/material.dart';

import '../data/dumy_data.dart';
import '../models/meal.dart';

class MealRepository {
  void addMovie(Meal meal) {
    DUMMY_DATA.add(meal);
  }


  void removeMeal(int id) {
    DUMMY_DATA.removeWhere((element) => element.id == id);
  }

  void editMovie(Meal meal, int index) {
    DUMMY_DATA.replaceRange(index, index + 1, [meal]);
  }
}
