import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/meal.dart';

class Menu extends StatelessWidget {
  final List<Meal> mockedMeals = [
    Meal(id: 0, name: 'Cereal', type: MealType.Breakast),
    Meal(id: 1, name: 'Spaghetti', type: MealType.Lunch),
    Meal(id: 2, name: 'Banana', type: MealType.Snack),
    Meal(id: 3, name: 'Sandwich', type: MealType.Dinner),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.all(16),
            child: Text('Today\'s Menu',
                style: GoogleFonts.pacifico(
                  fontSize: 32,
                )),
          ),
          Container(
            child: Column(
              children: [
                Text('Cereal', style: GoogleFonts.pacifico(fontSize: 24)),
                Text(
                  'Breakfast',
                  style: GoogleFonts.pacifico(color: Colors.amber),
                )
              ],
            ),
          ),
          Container(
            child: Icon(
              Icons.circle_rounded,
              size: 10,
            ),
          ),
          Container(
            child: Column(
              children: [
                Text('Spaghetti', style: GoogleFonts.pacifico(fontSize: 24)),
                Text('Lunch', style: GoogleFonts.pacifico(color: Colors.amber))
              ],
            ),
          ),
          Container(
            child: Icon(
              Icons.circle_rounded,
              size: 10,
            ),
          ),
          Container(
            child: Column(
              children: [
                Text('Fruit Salad', style: GoogleFonts.pacifico(fontSize: 24)),
                Text(
                  'Snack',
                  style: GoogleFonts.pacifico(color: Colors.amber),
                )
              ],
            ),
          ),
          Container(
            child: Icon(
              Icons.circle_rounded,
              size: 10,
            ),
          ),
          Container(
            child: Column(
              children: [
                Text('Ham Sandwich', style: GoogleFonts.pacifico(fontSize: 24)),
                Text('Dinner', style: GoogleFonts.pacifico(color: Colors.amber))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
