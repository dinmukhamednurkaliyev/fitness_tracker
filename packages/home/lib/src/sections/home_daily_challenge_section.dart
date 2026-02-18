import 'package:appearance/appearance.dart';
import 'package:flutter/material.dart';

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
                    context.image.avatarStack(
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
              child: RiveWidgetBuilder(
                fileLoader: FileLoader.fromAsset(
                  'assets/animations/sport_winner.riv',
                  riveFactory: Factory.flutter,
                ),
                builder: (context, state) {
                  return switch (state) {
                    RiveLoading() => const Center(
                      child: CircularProgressIndicator.adaptive(),
                    ),
                    RiveLoaded(controller: final controller) => RiveWidget(
                      controller: controller,
                    ),
                    RiveFailed() => const Center(
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
