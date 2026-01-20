import 'package:fitness_tracker_application/appearance/appearance.dart';
import 'package:flutter/material.dart';

class SocialMediaIcon extends StatelessWidget {
  const SocialMediaIcon({
    required this.icon,
    required this.iconColor,
    this.size = 40,
    this.iconSize = 20,
    super.key,
  });

  final IconData icon;
  final Color iconColor;
  final double size;
  final double iconSize;

  @override
  Widget build(BuildContext context) {
    final color = context.color;
    return Container(
      width: size,
      height: size,
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
        size: iconSize,
      ),
    );
  }
}
