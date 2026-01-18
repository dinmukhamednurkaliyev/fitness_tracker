import 'package:fitness_tracker_application/appearance/appearance.dart';
import 'package:fitness_tracker_application/home/home.dart';
import 'package:flutter/material.dart';

class SocialMediaCard extends StatelessWidget {
  const SocialMediaCard({super.key});

  @override
  Widget build(BuildContext context) {
    final spacing = context.spacing;
    final radius = context.radius;
    final color = context.color;
    return Container(
      padding: EdgeInsets.all(spacing.sm),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius.sm),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SocialMediaIcon(
            icon: Icons.camera_alt,
            iconColor: color.socialPink,
          ),
          SocialMediaIcon(
            icon: Icons.play_circle_outline,
            iconColor: color.socialRed,
          ),
          SocialMediaIcon(
            icon: Icons.chat_bubble_outline,
            iconColor: color.socialBlue,
          ),
        ],
      ),
    );
  }
}
