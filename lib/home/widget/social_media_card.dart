import 'package:fitness_tracker_application/home/home.dart';
import 'package:flutter/material.dart';

@immutable
class SocialMediaCardData {
  const SocialMediaCardData({
    required this.icon,
    required this.backgroundColor,
  });

  final IconData icon;
  final Color backgroundColor;
}

class SocialMediaCard extends StatelessWidget {
  const SocialMediaCard({
    required this.social,
    super.key,
  });

  final SocialMediaCardData social;

  @override
  Widget build(BuildContext context) {
    return SocialMediaIcon(
      icon: social.icon,
      iconColor: social.backgroundColor,
    );
  }
}
