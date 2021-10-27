import 'package:flutter/material.dart';

import 'package:meal_planner/assets/strings.dart';
import '../../utils/general_helper.dart';
import '../widgets/menu/menu.dart';
import '../widgets/week_day_picker.dart';

class WeekDetailsScreen extends StatefulWidget {
  static const routeName = '/week-details';

  @override
  _WeekDetailsScreenState createState() => _WeekDetailsScreenState();
}

class _WeekDetailsScreenState extends State<WeekDetailsScreen> {
  String _weekDayToDisplay = 'Monday';

  void _changeDay(String newDay) {
    setState(() {
      _weekDayToDisplay = newDay;
    });
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final appBar = AppBar(
        textTheme: Theme.of(context).textTheme,
        title: const Text(Strings.weekDetailsTitle));

    return Scaffold(
      appBar: appBar,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: GeneralHelper.getProportionalContentHeight(
                mediaQuery, appBar, 0.15),
            child: WeekDayPicker(_changeDay),
          ),
          Container(
              height: GeneralHelper.getProportionalContentHeight(
                  mediaQuery, appBar, 0.8),
              child: Menu(true, _weekDayToDisplay)),
        ],
      ),
    );
  }
}
