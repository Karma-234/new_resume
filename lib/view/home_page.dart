import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_resume/constants/image_strings.dart';
import 'package:my_resume/constants/text_strings.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../widgets/details_card_widget.dart';
import '../widgets/resume_bio.dart';
import '../widgets/text_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
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
          LinkIcon(
            icon: FontAwesomeIcons.twitter,
            proLink: twitter,
          ),
          LinkIcon(
            icon: FontAwesomeIcons.github,
            proLink: gitHub,
            color: Colors.black,
          ),
          LinkIcon(
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
                height: MediaQuery.of(context).size.width > 480 ? 140.0 : 100.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    DetailCard(headerText: 'Role', bodyText: roles),
                    DetailCard(headerText: 'About', bodyText: about),
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

class LinkIcon extends StatelessWidget {
  const LinkIcon({
    Key? key,
    required this.icon,
    required this.proLink,
    this.color,
  }) : super(key: key);
  final IconData icon;
  final String proLink;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () async {
        final Uri url = Uri.parse(proLink);
        if (!await launchUrl(url)) {
          await launchUrl(
            url,
            mode: LaunchMode.externalApplication,
          );
        }
      },
      icon: Icon(
        icon,
        color: color ?? Colors.blue,
      ),
    );
  }
}
