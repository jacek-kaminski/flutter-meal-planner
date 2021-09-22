import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../models/meal.dart';
import 'menu_item.dart';
import 'menu_item_separator.dart';

class Menu extends StatelessWidget {
  final bool exchangePossible;
  final String title;

  final List<Meal> mockedMeals = [
    Meal(id: 0, name: 'Cereal', type: MealType.Breakast),
    Meal(id: 1, name: 'Burger', type: MealType.Lunch),
    Meal(id: 2, name: 'Apple', type: MealType.Snack),
    Meal(id: 3, name: 'Hawai Toast', type: MealType.Dinner),
  ];

  Menu(this.exchangePossible, this.title);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            alignment: Alignment.center,
            child: Text('$title Menu',
                style: GoogleFonts.pacifico(
                  fontSize: 32,
                )),
          ),
          MenuItem(
            mealType: mockedMeals[0].type,
            mealName: mockedMeals[0].name,
            isExchangable: exchangePossible,
          ),
          MenuItemSeparator(),
          MenuItem(
            mealType: mockedMeals[1].type,
            mealName: mockedMeals[1].name,
            isExchangable: exchangePossible,
          ),
          MenuItemSeparator(),
          MenuItem(
            mealType: mockedMeals[2].type,
            mealName: mockedMeals[2].name,
            isExchangable: exchangePossible,
          ),
          MenuItemSeparator(),
          MenuItem(
            mealType: mockedMeals[3].type,
            mealName: mockedMeals[3].name,
            isExchangable: exchangePossible,
          ),
        ],
      ),
    );
  }
}
