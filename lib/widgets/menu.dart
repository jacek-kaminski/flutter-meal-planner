import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Theme.of(context).primaryColor.withOpacity(0.7),
            Theme.of(context).primaryColor,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      margin: EdgeInsets.fromLTRB(16, 16, 16, 16),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              child: Text(
                'Title',
                style: GoogleFonts.lato(),
              ),
              color: Colors.brown,
            ),
            Container(
              child: Column(
                children: [Text('Title1'), Text('subtitle1')],
              ),
              color: Colors.yellow,
            ),
            Container(
              child: Column(
                children: [Text('Title2'), Text('subtitle2')],
              ),
              color: Colors.red,
            ),
            Container(
              child: Column(
                children: [Text('Title3'), Text('subtitle3')],
              ),
              color: Colors.blue,
            ),
            Container(
              child: Column(
                children: [Text('Title4'), Text('subtitle4')],
              ),
              color: Colors.green,
            )
          ],
        ),
      ),
    );
  }
}
