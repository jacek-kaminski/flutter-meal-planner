import 'package:flutter/material.dart';

import 'package:meal_planner/assets/strings.dart';

class ShoppingListScreen extends StatelessWidget {
  static const routeName = '/shopping-list';

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final appBar = AppBar(
      textTheme: Theme.of(context).textTheme,
      title: const Text(Strings.shoppingListTitle),
    );

    return Scaffold(
        appBar: appBar,
        body: Center(
          child: Text('Shopping list!'),
        ));
  }
}
