import 'package:flutter/material.dart';

import 'package:meal_planner/assets/strings.dart';

class MealListScreen extends StatelessWidget {
  static const routeName = '/meal-list';

  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      textTheme: Theme.of(context).textTheme,
      title: const Text(Strings.mealListTitle),
    );

    return Scaffold(
        appBar: appBar,
        body: Center(
          child: Text('Meal list!'),
        ));
  }
}
