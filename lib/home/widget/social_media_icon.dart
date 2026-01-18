import 'package:fitness_tracker_application/appearance/appearance.dart';
import 'package:flutter/material.dart';

class SocialMediaIcon extends StatelessWidget {
  const SocialMediaIcon({
    required this.icon,
    required this.iconColor,
    super.key,
  });
  final IconData icon;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    final color = context.color;
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: color.backgroundWhite,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: color.shadowMedium,
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Icon(
        icon,
        color: iconColor,
        size: 20,
      ),
    );
  }
}
