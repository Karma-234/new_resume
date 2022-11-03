import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_resume/constants/image_strings.dart';
import 'package:my_resume/constants/text_strings.dart';

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
        automaticallyImplyLeading: true,
        leading: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () async {},
              icon: const Icon(
                FontAwesomeIcons.twitter,
                color: Colors.blue,
              ),
            ),
            const Icon(
              FontAwesomeIcons.githubAlt,
              color: Colors.black,
            ),
            const Icon(
              FontAwesomeIcons.linkedinIn,
              color: Colors.blue,
            ),
          ],
        ),
        leadingWidth: 100.0,
        centerTitle: true,
        backgroundColor: Colors.white.withOpacity(1),
        title: Text(
          'Home',
          style: GoogleFonts.montserrat(
              color: Colors.blueGrey, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.settings,
              color: Colors.blueGrey,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.logout,
              color: Colors.blueGrey,
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.28,
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(40.0),
                        bottomLeft: Radius.circular(40.0),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            BioHead(text: nameH),
                            BioBody(text: name),
                            BioHead(text: userH),
                            BioBody(text: user),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            BioHead(text: titleH),
                            BioBody(text: title),
                            BioHead(text: emailH),
                            BioBody(text: email),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.18,
                    left: MediaQuery.of(context).size.width * 0.35,
                    child: const CircleAvatar(
                      radius: 70.0,
                      foregroundImage: AssetImage(proImage),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width > 480 ? 140.0 : 100.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const BioHead(text: 'About'),
                        SizedBox(
                          width: MediaQuery.of(context).size.width > 480
                              ? 200
                              : 170,
                          child: const Card(
                            elevation: 20.0,
                            child: Text(about),
                          ),
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const BioHead(text: 'Roles'),
                        SizedBox(
                          width: MediaQuery.of(context).size.width > 480
                              ? 200
                              : 170,
                          child: const Card(
                            elevation: 20.0,
                            child: Text(about),
                          ),
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
