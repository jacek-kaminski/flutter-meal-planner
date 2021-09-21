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
