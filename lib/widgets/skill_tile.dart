import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
