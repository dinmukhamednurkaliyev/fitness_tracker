import 'package:fitness_tracker_application/appearance/appearance.dart';
import 'package:fitness_tracker_application/home/home.dart';
import 'package:flutter/material.dart';

class HomeSocialMediaSection extends StatelessWidget {
  const HomeSocialMediaSection({super.key});

  @override
  Widget build(BuildContext context) {
    final color = context.color;

    return SocialMediaCard(
      items: [
        SocialMediaItem(
          icon: Icons.camera_alt,
          color: color.socialPink,
        ),
        SocialMediaItem(
          icon: Icons.play_circle_outline,
          color: color.socialRed,
        ),
        SocialMediaItem(
          icon: Icons.chat_bubble_outline,
          color: color.socialBlue,
        ),
      ],
    );
  }
}
