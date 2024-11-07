import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMediaIconsContainer extends StatelessWidget {
  final String facebookUrl = 'https://www.facebook.com/umair.janexamir.1';
  final String instagramUrl = 'https://www.instagram.com/aamir_soomro52';
  final String twitterUrl = 'https://x.com/AamirSo91479275';
  final String linkedinUrl = 'https://www.linkedin.com/in/aamiralisoomro0317/';

  Future<void> _launchUrl(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          icon: const FaIcon(FontAwesomeIcons.facebook),
          onPressed: () => _launchUrl(facebookUrl),
        ),
        IconButton(
          icon: const FaIcon(FontAwesomeIcons.instagram),
          onPressed: () => _launchUrl(instagramUrl),
        ),
        IconButton(
          icon: const FaIcon(FontAwesomeIcons.twitter),
          onPressed: () => _launchUrl(twitterUrl),
        ),
        IconButton(
          icon: const FaIcon(FontAwesomeIcons.linkedin),
          onPressed: () => _launchUrl(linkedinUrl),
        ),
      ],
    );
  }
}
