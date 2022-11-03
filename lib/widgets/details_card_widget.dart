import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_resume/widgets/text_widget.dart';

class DetailCard extends StatelessWidget {
  const DetailCard({Key? key, required this.headerText, required this.bodyText})
      : super(key: key);
  final String headerText;
  final String bodyText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BioHead(text: headerText),
        Card(
          elevation: 20.0,
          child: Container(
            width: MediaQuery.of(context).size.width > 480
                ? 200
                : MediaQuery.of(context).size.width < 411
                    ? 140.0
                    : 170,
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.blue,
                  Colors.blueAccent,
                ],
              ),
            ),
            child: Text(
              bodyText,
              style: GoogleFonts.acme(fontSize: 20.0),
            ),
          ),
        )
      ],
    );
  }
}
