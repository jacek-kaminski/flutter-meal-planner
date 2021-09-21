import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meal_planner/widgets/screens/home_screen.dart';
import 'package:meal_planner/widgets/screens/meal_list_screen.dart';

import 'widgets/screens/shopping_list_screen.dart';
import 'widgets/screens/meal_list_screen.dart';
import 'widgets/screens/week_details_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: ThemeData.light().textTheme.copyWith(
              headline6: GoogleFonts.pacifico(fontSize: 24),
              subtitle1: GoogleFonts.pacifico(fontSize: 16),
            ),
        primarySwatch: Colors.amber,
        accentColor: Colors.black,
        canvasColor: Colors.white,
      ),
      home: HomeScreen(),
      routes: {
        WeekDetailsScreen.routeName: (ctx) => WeekDetailsScreen(),
        MealListScreen.routeName: (ctx) => MealListScreen(),
        ShoppingListScreen.routeName: (ctx) => ShoppingListScreen(),
      },
    );
  }
}
