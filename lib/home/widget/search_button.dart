import 'package:fitness_tracker_application/appearance/theme.dart';
import 'package:flutter/material.dart';

class SearchButton extends StatelessWidget {
  const SearchButton({super.key});

  @override
  Widget build(BuildContext context) {
    final color = context.color;
    final radius = context.radius;
    return Container(
      width: 40,
      height: 40,
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
        size: 20,
      ),
    );
  }
}
