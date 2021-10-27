import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import './meal_tag_picker.dart';
import '../../models/meal.dart';

class NewMeal extends StatefulWidget {
  final Function addMeal;

  NewMeal(this.addMeal);

  @override
  _NewMealState createState() => _NewMealState();
}

class _NewMealState extends State<NewMeal> {
  final _nameController = TextEditingController();
  List<MealTag> _mealTags = [];

  void _submitData() {
    final enteredName = _nameController.text;

    if (enteredName.isEmpty || _mealTags.isEmpty) {
      return;
    }

    widget.addMeal(_nameController.text, _mealTags);
    Navigator.of(context).pop();
  }

  void _setMealTags(List<MealTag> assignedTags) {
    setState(() {
      _mealTags = assignedTags;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(
          8, 8, 8, MediaQuery.of(context).viewInsets.bottom + 8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Create a New Meal',
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 8, 8, 32),
            child: TextField(
              decoration: InputDecoration(labelText: 'Meal Name'),
              controller: _nameController,
              onSubmitted: (_) => _submitData(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: MealTagPicker(_setMealTags),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: _submitData,
              child: Text(
                'Add a new Meal',
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
