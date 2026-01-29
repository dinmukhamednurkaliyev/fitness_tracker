import 'package:fitness_tracker_application/appearance/appearance.dart';
import 'package:fitness_tracker_application/home/home.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart' as rive;

class HomeDailyChallengeSection extends StatelessWidget {
  const HomeDailyChallengeSection({
    required this.challengeParticipants,
    super.key,
  });

  final List<String> challengeParticipants;

  @override
  Widget build(BuildContext context) {
    final spacing = context.spacing;
    final radius = context.radius;
    final color = context.color;
    final text = context.text;
    return Container(
      padding: EdgeInsets.all(spacing.md),
      decoration: BoxDecoration(
        color: color.backgroundPrimary,
        borderRadius: BorderRadius.circular(radius.md),
        boxShadow: [
          BoxShadow(
            color: color.shadowLight,
            blurRadius: radius.md,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: spacing.sm,
              children: [
                Text(
                  'Daily challenge',
                  style: text.titleLarge.withColor(color.textPrimary),
                ),
                Text(
                  'Do your plan before 09:00 AM',
                  style: text.labelLarge.withColor(color.textSecondary),
                ),
                Row(
                  children: [
                    AvatarStack(
                      urls: challengeParticipants,
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            width: 120,
            height: 120,
            child: Center(
              child: rive.RiveWidgetBuilder(
                fileLoader: rive.FileLoader.fromAsset(
                  'assets/animations/sport_winner.riv',
                  riveFactory: rive.Factory.flutter,
                ),
                builder: (BuildContext context, rive.RiveState state) {
                  return switch (state) {
                    rive.RiveLoading() => const Center(
                      child: CircularProgressIndicator.adaptive(),
                    ),
                    rive.RiveLoaded(controller: final controller) =>
                      rive.RiveWidget(
                        controller: controller,
                      ),
                    rive.RiveFailed() => const Center(
                      child: Icon(Icons.error_outline, color: Colors.red),
                    ),
                  };
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
