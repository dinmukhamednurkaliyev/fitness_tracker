import 'package:fitness_tracker_application/appearance/appearance.dart';
import 'package:fitness_tracker_application/session/session.dart';
import 'package:flutter/material.dart';

class SessionPage extends StatelessWidget {
  const SessionPage({super.key});

  @override
  Widget build(BuildContext context) {
    final color = context.color;
    return Scaffold(
      backgroundColor: color.backgroundPrimary,
      appBar: const SessionHeader(),
      body: const SessionBody(),
    );
  }
}

class SessionHeader extends StatelessWidget implements PreferredSizeWidget {
  const SessionHeader({
    super.key,
  });

  static const double _headerHeight = 100;

  @override
  Widget build(BuildContext context) {
    final color = context.color;
    final spacing = context.spacing;
    final text = context.text;
    return AppBar(
      titleSpacing: spacing.sm,
      elevation: 0,
      scrolledUnderElevation: 0,
      backgroundColor: color.backgroundPrimary,
      toolbarHeight: _headerHeight,
      centerTitle: true,
      title: Text(
        'Sessions',
        style: text.titleLarge.withColor(color.textPrimary),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(_headerHeight);
}

class SessionBody extends StatelessWidget {
  const SessionBody({super.key});

  @override
  Widget build(BuildContext context) {
    final padding = context.spacing;
    final color = context.color;

    final sessionCardItem = [
      SessionCardData(
        title: 'Yoga Group',
        trainerName: 'Kellie Jetton',
        difficulty: 'Medium',
        duration: '1 hr',
        calories: '115 kcal',
        description: 'Gentle vinvasa flow to improve flexibility and balance',
        backgroundColor: color.cardBackgroundYellow,
      ),
      SessionCardData(
        title: 'Balance',
        trainerName: 'Kellie Jetton',
        difficulty: 'Easy',
        duration: '30 min',
        calories: '90 kcal',
        description: 'Light session to activate core and stabilizers.',
        backgroundColor: color.cardBackgroundBlue,
      ),
      SessionCardData(
        title: 'Strength Training',
        trainerName: 'Kellie Jetton',
        difficulty: 'Hard',
        duration: '30 min',
        calories: '250 kcal',
        description: 'Build lean muscle and increase metabolism',
        backgroundColor: color.cardBackgroundYellow,
      ),
      SessionCardData(
        title: 'Cardio Blast',
        trainerName: 'Kellie Jetton',
        difficulty: 'Medium',
        duration: '45 min',
        calories: '300 kcal',
        description: 'High intensity interval training to boost metabolism',
        backgroundColor: color.cardBackgroundBlue,
      ),
    ];

    return SingleChildScrollView(
      padding: EdgeInsets.all(padding.sm),
      child: Column(
        spacing: padding.sm,
        children: [
          SessionAvailableSection(sessions: sessionCardItem),
        ],
      ),
    );
  }
}
