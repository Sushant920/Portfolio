import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialRow extends StatelessWidget {
  const SocialRow({Key? key});

  void launchUrl(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          icon: FaIcon(FontAwesomeIcons.instagram),
          onPressed: () {
            launchUrl('https://instagram.com/sushant.sopan.chavan');
          },
        ),
        const SizedBox(width: 8.0),
        IconButton(
          icon: FaIcon(FontAwesomeIcons.linkedin),
          onPressed: () {
            launchUrl('https://linkedin.com/chavansushant');
          },
        ),
        const SizedBox(width: 8.0),
        IconButton(
          icon: FaIcon(FontAwesomeIcons.github),
          onPressed: () {
            launchUrl('https://github.com/Sushant920');
          },
        ),
        const SizedBox(width: 8.0),
        IconButton(
          icon: FaIcon(FontAwesomeIcons.twitter),
          onPressed: () {
            launchUrl('https://twitter.com/SushantChavan09');
          },
        ),
      ],
    );
  }
}
