import 'package:fitness_tracker_application/appearance/theme.dart';
import 'package:flutter/material.dart';

class SearchButton extends StatelessWidget {
  const SearchButton({
    this.size = 40,
    this.iconSize = 20,
    this.onTap,
    super.key,
  });

  final double size;
  final double iconSize;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final color = context.color;
    final radius = context.radius;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          color: color.backgroundPrimary,
          borderRadius: BorderRadius.circular(radius.xs),
          boxShadow: [
            BoxShadow(
              color: color.shadowLight,
              blurRadius: radius.xs,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Icon(
          Icons.search,
          color: color.iconGrey,
          size: iconSize,
        ),
      ),
    );
  }
}
