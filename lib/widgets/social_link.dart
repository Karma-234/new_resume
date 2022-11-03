import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialLink extends StatelessWidget {
  const SocialLink({
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
