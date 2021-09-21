import 'package:flutter/material.dart';

import 'package:meal_planner/assets/strings.dart';

class WeekDetailsScreen extends StatelessWidget {
  static const routeName = '/week-details';

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final appBar = AppBar(
      textTheme: Theme.of(context).textTheme,
      title: const Text(Strings.weekDetailsTitle),
    );

    return Scaffold(
        appBar: appBar,
        body: Center(
          child: Text('Week details!'),
        ));
  }
}
