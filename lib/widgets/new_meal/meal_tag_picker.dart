import 'package:flutter/material.dart';
import 'package:meal_planner/models/meal.dart';

class MealTagPicker extends StatefulWidget {
  final Function setMealTags;

  MealTagPicker(this.setMealTags);

  @override
  _MealTagPickerState createState() => _MealTagPickerState();
}

class _MealTagPickerState extends State<MealTagPicker> {
  List<MealTag> selectedTags = [];

  void _toggleTag(MealTag mealTag) {
    setState(() {
      if (!selectedTags.contains(mealTag)) {
        selectedTags.add(mealTag);
      } else {
        selectedTags.remove(mealTag);
      }
    });
    widget.setMealTags(selectedTags);
  }

  ButtonStyle _getTagStyle(MealTag tag) {
    final theme = Theme.of(context);

    return ElevatedButton.styleFrom(
      textStyle: theme.textTheme.subtitle1,
      primary:
          selectedTags.contains(tag) ? theme.primaryColor : theme.accentColor,
      onPrimary: selectedTags.contains(tag) ? Colors.black : Colors.white,
      shape: StadiumBorder(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Select Meal Tags:',
            style: Theme.of(context).textTheme.subtitle1,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: MealTag.values
              .map((mealTag) => ElevatedButton(
                    onPressed: () => _toggleTag(mealTag),
                    child: Text(mealTag.value),
                    style: _getTagStyle(mealTag),
                  ))
              .toList(),
        ),
      ],
    );
  }
}
