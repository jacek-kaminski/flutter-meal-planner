import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardButton extends StatelessWidget {
  final String buttonText;

  CardButton(this.buttonText);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Theme.of(context).primaryColor.withOpacity(0.5),
            Theme.of(context).primaryColor,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      margin: EdgeInsets.fromLTRB(16, 0, 16, 16),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
            child: Text(
          buttonText,
          style: GoogleFonts.pacifico(),
        )),
      ),
    );
  }
}
