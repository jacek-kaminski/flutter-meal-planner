import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meal_planner/widgets/home_screen.dart';

import '../assets/strings.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: GoogleFonts.pacificoTextTheme(),
        primarySwatch: Colors.orange,
        accentColor: Colors.indigo,
        canvasColor: Color.fromRGBO(255, 240, 229, 1),
      ),
      home: HomeScreen(),
    );
  }
}
