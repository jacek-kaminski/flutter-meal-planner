import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/enums.dart';

class WeekDayPicker extends StatefulWidget {
  final Function loadMenu;

  WeekDayPicker(this.loadMenu);

  @override
  _WeekDayPickerState createState() => _WeekDayPickerState();
}

class _WeekDayPickerState extends State<WeekDayPicker> {
  WeekDay selectedDay = WeekDay.Monday;

  void _selectWeekDay(WeekDay newDay) {
    widget.loadMenu(newDay.value);
    setState(() {
      selectedDay = newDay;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(8, 16, 8, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: WeekDay.values
            .map((weekDay) => SizedBox(
                  width: 48,
                  height: 48,
                  child: FloatingActionButton(
                    onPressed: () => _selectWeekDay(weekDay),
                    heroTag: 'btn${weekDay.shortValue}',
                    backgroundColor:
                        weekDay == selectedDay ? Colors.amber : null,
                    foregroundColor:
                        weekDay == selectedDay ? Colors.black : null,
                    child: Text(
                      weekDay.shortValue,
                      style: GoogleFonts.pacifico(),
                    ),
                  ),
                ))
            .toList(),
      ),
    );
  }
}
