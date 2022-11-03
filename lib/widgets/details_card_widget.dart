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
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(16.0),
            ),
          ),
          elevation: 20.0,
          child: Container(
            width: MediaQuery.of(context).size.width > 480
                ? 260
                : MediaQuery.of(context).size.width < 411
                    ? 80.0
                    : 170,
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.blue,
                  Colors.blueAccent,
                ],
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(13.0),
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
