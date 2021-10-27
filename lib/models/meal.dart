import 'package:flutter/foundation.dart';

class Meal {
  final int id;
  final String name;
  final List<MealTag> tags;

  const Meal({
    required this.id,
    required this.name,
    required this.tags,
  });
}

enum MealTag {
  Breakast,
  Lunch,
  Snack,
  Dinner,
}

extension MealTagExtension on MealTag {
  String get value {
    return describeEnum(this);
  }
}
