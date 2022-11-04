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
    double mWidth = MediaQuery.of(context).size.width;
    double mHeight = MediaQuery.of(context).size.height;
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
            width: mWidth > 480
                ? 260
                : mWidth < 380
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
              borderRadius: BorderRadius.all(
                Radius.circular(13.0),
              ),
            ),
            child: Text(
              bodyText,
              style: GoogleFonts.acme(fontSize: mWidth < 380 ? 14.0 : 20.0),
            ),
          ),
        )
      ],
    );
  }
}
