import 'package:flutter/foundation.dart';

class Meal {
  final int id;
  final String name;
  final MealType type;

  const Meal({
    required this.id,
    required this.name,
    required this.type,
  });
}

enum MealType {
  Breakast,
  Lunch,
  Snack,
  Dinner,
}

extension MealTypeExtension on MealType {
  String get value {
    return describeEnum(this);
  }
}
