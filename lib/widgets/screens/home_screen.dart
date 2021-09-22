import 'package:flutter/material.dart';

import 'package:meal_planner/assets/strings.dart';
import 'package:meal_planner/utils/general_helper.dart';
import 'package:meal_planner/widgets/expandable_fab_menu/expandable_fab.dart';
import 'package:meal_planner/widgets/menu/menu.dart';

import './meal_list_screen.dart';
import './week_details_screen.dart';
import './shopping_list_screen.dart';
import '../expandable_fab_menu/expandable_fab.dart';
import '../expandable_fab_menu/action_button.dart';

class HomeScreen extends StatelessWidget {
  void _navigateTo(BuildContext ctx, Destination destination) {
    var routeName;
    switch (destination) {
      case Destination.WeekDetails:
        routeName = WeekDetailsScreen.routeName;
        break;
      case Destination.MealList:
        routeName = MealListScreen.routeName;
        break;
      case Destination.ShoppingList:
        routeName = ShoppingListScreen.routeName;
        break;
      default:
        break;
    }
    Navigator.of(ctx).pushNamed(routeName);
  }

  void _goToWeekDetails(BuildContext ctx) {
    var routeName = WeekDetailsScreen.routeName;
    Navigator.of(ctx).pushNamed(routeName);
  }

  void _goToMealList(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(MealListScreen.routeName);
  }

  void _goToShoppigList(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(ShoppingListScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final appBar = AppBar(
        textTheme: Theme.of(context).textTheme,
        title: const Text(Strings.homeTitle),
        actions: [
          PopupMenuButton(
            onSelected: (value) => _navigateTo(context, value as Destination),
            icon: Icon(
              Icons.menu,
            ),
            itemBuilder: (_) => [
              PopupMenuItem(
                child: Text('Go to Week Details',
                    style: Theme.of(context).textTheme.subtitle1),
                value: Destination.WeekDetails,
              ),
              PopupMenuItem(
                child: Text('Go to Meal List',
                    style: Theme.of(context).textTheme.subtitle1),
                value: Destination.MealList,
              ),
              PopupMenuItem(
                child: Text('Go to Shopping List',
                    style: Theme.of(context).textTheme.subtitle1),
                value: Destination.ShoppingList,
              )
            ],
          ),
        ]);

    return Scaffold(
      appBar: appBar,
      body: Container(
        height:
            GeneralHelper.getProportionalContentHeight(mediaQuery, appBar, 0.8),
        child: Menu(false, 'Today\'s'),
      ),
      floatingActionButton: ExpandableFab(
        distance: 112.0,
        children: [
          ActionButton(
            onPressed: () => _navigateTo(context, Destination.WeekDetails),
            icon: const Icon(Icons.manage_search_rounded),
          ),
          ActionButton(
            onPressed: () => _navigateTo(context, Destination.MealList),
            icon: const Icon(Icons.fastfood_rounded),
          ),
          ActionButton(
            onPressed: () => _navigateTo(context, Destination.ShoppingList),
            icon: const Icon(Icons.shopping_cart_rounded),
          )
        ],
      ),
    );
  }
}

enum Destination {
  WeekDetails,
  MealList,
  ShoppingList,
}
