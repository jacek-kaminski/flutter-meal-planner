import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../models/meal.dart';

class MenuItem extends StatelessWidget {
  final MealType mealType;
  final String? mealName;
  final bool? isExchangable;

  MenuItem({required this.mealType, this.mealName, this.isExchangable});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          if (mealName != null && isExchangable != null)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (isExchangable!) SizedBox(height: 42, width: 42),
                Text(mealName!, style: GoogleFonts.pacifico(fontSize: 24)),
                if (isExchangable!)
                  SizedBox(
                    height: 42,
                    width: 42,
                    child: IconButton(
                        padding: const EdgeInsets.all(0),
                        iconSize: 32,
                        splashRadius: 24,
                        onPressed: () {},
                        icon: Icon(Icons.autorenew_rounded)),
                  ),
              ],
            ),
          if (mealName == null)
            SizedBox(
              height: 42,
              width: 42,
              child: IconButton(
                  padding: const EdgeInsets.all(0),
                  iconSize: 32,
                  splashRadius: 24,
                  onPressed: () {},
                  icon: Icon(Icons.add_circle_outline_rounded)),
            ),
          Text(mealType.value, style: GoogleFonts.pacifico(color: Colors.amber))
        ],
      ),
    );
  }
}
