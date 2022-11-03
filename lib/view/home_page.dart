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
import '../widgets/social_link.dart';
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
                height: MediaQuery.of(context).size.width > 480 ? 140.0 : 100.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22.0),
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
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        BioHead(text: 'Skills'),
                        SkillTile(
                          icon: FontAwesomeIcons.python,
                          skill: python,
                        ),
                        SkillTile(
                          icon: FontAwesomeIcons.mobile,
                          skill: flutter,
                        ),
                        SkillTile(
                            icon: FontAwesomeIcons.solidFileExcel,
                            skill: sqlite),
                        SkillTile(
                          icon: FontAwesomeIcons.java,
                          skill: java,
                        ),
                        SkillTile(
                          icon: FontAwesomeIcons.route,
                          skill: api,
                        )
                      ],
                    ),
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

class SkillTile extends StatelessWidget {
  const SkillTile({
    Key? key,
    required this.icon,
    this.iconColor,
    required this.skill,
  }) : super(key: key);
  final String skill;
  final IconData icon;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color: iconColor ?? Colors.grey[450],
      ),
      title: Text(
        skill,
        style: GoogleFonts.inika(fontSize: 18.0),
      ),
    );
  }
}
