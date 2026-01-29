import 'package:fitness_tracker_application/appearance/appearance.dart';
import 'package:fitness_tracker_application/session/session.dart';
import 'package:flutter/material.dart';

class SessionAvailableSection extends StatelessWidget {
  const SessionAvailableSection({
    required this.sessions,
    super.key,
  });

  final List<SessionCardData> sessions;

  @override
  Widget build(BuildContext context) {
    final spacing = context.spacing;
    final text = context.text;
    final color = context.color;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: spacing.sm,
      children: [
        Text(
          'Available Sessions',
          style: text.headlineSmall.withColor(color.textPrimary),
        ),
        Text(
          'Choose your workout session',
          style: text.bodyLarge.withColor(color.textPrimary),
        ),
        Column(
          spacing: spacing.sm,
          children: sessions
              .map(
                (item) => SessionCard(
                  session: item,
                  onTap: () {},
                ),
              )
              .toList(),
        ),
      ],
    );
  }
}
