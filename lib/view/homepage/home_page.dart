import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_resume/core/constants/image_strings.dart';
import 'package:my_resume/core/constants/text_strings.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../core/widgets/details_card_widget.dart';
import 'section/resume_bio.dart';
import '../../core/widgets/skill_tile.dart';
import '../../core/widgets/social_link.dart';
import '../../core/widgets/text_widget.dart';
import 'section/skills.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double mWidth = MediaQuery.of(context).size.width;
    double mHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white.withOpacity(1),
        title: Text(
          'Home',
          style: GoogleFonts.montserrat(
              color: Colors.blueGrey,
              fontWeight: FontWeight.bold,
              fontSize: 30.0),
        ),
        actions: const [
          SocialLink(
            icon: FontAwesomeIcons.twitter,
            proLink: twitter,
          ),
          SocialLink(
            icon: FontAwesomeIcons.github,
            proLink: gitHub,
            color: Colors.black,
          ),
          SocialLink(
            icon: FontAwesomeIcons.linkedin,
            proLink: linkedIn,
          ),
        ],
      ),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ResumeBio(),
              SizedBox(
                height: mWidth > 480
                    ? 140.0
                    : mWidth < 411
                        ? 80.0
                        : 100.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: mWidth < 400 ? 17.0 : 22.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        DetailCard(headerText: 'Role', bodyText: roles),
                        DetailCard(headerText: 'About', bodyText: about),
                      ],
                    ),
                    const Skills(),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
