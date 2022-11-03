import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BioBody extends StatelessWidget {
  const BioBody({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      overflow: TextOverflow.ellipsis,
      softWrap: true,
      textAlign: TextAlign.justify,
      text,
      style: GoogleFonts.acme(
        fontSize: 16.0,
        fontWeight: FontWeight.w500,
        color: Colors.white,
      ),
    );
  }
}

class BioHead extends StatelessWidget {
  const BioHead({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.inder(
          color: Colors.blueGrey[700],
          fontSize: 24.0,
          fontWeight: FontWeight.bold),
    );
  }
}
