import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../constants/text_strings.dart';
import '../../../model/widgets/skill_tile.dart';
import '../../../model/widgets/text_widget.dart';

class Skills extends StatelessWidget {
  const Skills({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
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
        SkillTile(icon: FontAwesomeIcons.solidFileExcel, skill: sqlite),
        SkillTile(
          icon: FontAwesomeIcons.java,
          skill: java,
        ),
        SkillTile(
          icon: FontAwesomeIcons.route,
          skill: api,
        )
      ],
    );
  }
}
