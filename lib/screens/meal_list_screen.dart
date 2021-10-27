import 'package:flutter/material.dart';
import 'dart:io';

import 'package:meal_planner/assets/strings.dart';
import '../../models/meal.dart';
import '../../dummy_data.dart';
import '../widgets/meal_list.dart';
import '../widgets/new_meal/new_meal.dart';

class MealListScreen extends StatefulWidget {
  static const routeName = '/meal-list';

  @override
  _MealListScreenState createState() => _MealListScreenState();
}

class _MealListScreenState extends State<MealListScreen> {
  final List<Meal> meals = [];

  void addMeal() {}

  void _startAddNewMeal(BuildContext ctx) {
    showModalBottomSheet(
      isScrollControlled: true,
      context: ctx,
      builder: (_) => Wrap(children: [NewMeal(_addNewMeal)]),
    );
  }

  void _addNewMeal(String mealName, List<MealTag> mealTags) {
    final newMeal = Meal(
      id: 1,
      name: mealName,
      tags: mealTags,
    );

    setState(() {
      meals.add(newMeal);
    });
  }

  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      textTheme: Theme.of(context).textTheme,
      title: const Text(Strings.mealListTitle),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.add),
        )
      ],
    );

    return Scaffold(
      appBar: appBar,
      body: MealList(meals),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => _startAddNewMeal(context),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
