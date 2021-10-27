import 'package:flutter/material.dart';
import 'package:meal_planner/screens/home_screen.dart';
import 'package:meal_planner/screens/meal_list_screen.dart';
import 'package:meal_planner/screens/shopping_list_screen.dart';
import 'package:meal_planner/screens/week_details_screen.dart';

class TabsScreen extends StatefulWidget {
  final List<Map<String, Object>> _pages = [
    {
      'page': HomeScreen(),
      'title': 'Meal Planner',
    },
    {
      'page': WeekDetailsScreen(),
      'title': 'Week Details',
    },
    {
      'page': MealListScreen(),
      'title': 'Meal List',
    },
    {
      'page': ShoppingListScreen(),
      'title': 'Your Favorites',
    },
  ];

  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
