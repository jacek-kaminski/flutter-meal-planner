import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../screens/home_screen.dart';
import '../screens/shopping_list_screen.dart';
import '../screens/meal_list_screen.dart';
import '../screens/week_details_screen.dart';

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
              subtitle2: GoogleFonts.pacifico(fontSize: 8),
            ),
        primarySwatch: Colors.amber,
        accentColor: Colors.black,
        canvasColor: Colors.white,
      ),
      routes: {
        '/': (ctx) => HomeScreen(),
        WeekDetailsScreen.routeName: (ctx) => WeekDetailsScreen(),
        MealListScreen.routeName: (ctx) => MealListScreen(),
        ShoppingListScreen.routeName: (ctx) => ShoppingListScreen(),
      },
    );
  }
}
