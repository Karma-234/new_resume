import 'dart:html';

import 'package:flutter/material.dart';
import 'package:my_resume/model/widgets/text_widget.dart';

import '../../../constants/image_strings.dart';
import '../../../constants/text_strings.dart';

class ResumeBio extends StatelessWidget {
  const ResumeBio({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double mWidth = MediaQuery.of(context).size.width;
    double mHeight = MediaQuery.of(context).size.height;

    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          width: mWidth,
          height: mHeight * 0.30,
          decoration: const BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(40.0),
              bottomLeft: Radius.circular(40.0),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
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
        ),
        Positioned(
          top: mHeight * 0.18,
          left: mWidth * 0.35,
          child: const CircleAvatar(
            radius: 70.0,
            foregroundImage: AssetImage(proImage),
          ),
        )
      ],
    );
  }
}
