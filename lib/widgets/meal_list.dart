import 'package:flutter/material.dart';

import '../models/meal.dart';

class MealList extends StatelessWidget {
  final List<Meal> meals;

  MealList(this.meals);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (ctx, index) {
        return Card(
          elevation: 5,
          margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          child: ListTile(
            leading: Icon(Icons.fastfood),
            title: Text(meals[index].name),
            subtitle: Text(meals[index].tags.toString()),
          ),
        );
      },
      itemCount: meals.length,
    );
  }
}
