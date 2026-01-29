import 'package:fitness_tracker_application/appearance/appearance.dart';
import 'package:fitness_tracker_application/profile/profile.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final color = context.color;
    return Scaffold(
      backgroundColor: color.backgroundPrimary,
      appBar: const ProfileHeader(),
      body: const ProfileBody(),
    );
  }
}

class ProfileHeader extends StatelessWidget implements PreferredSizeWidget {
  const ProfileHeader({
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
        'Profile',
        style: text.titleLarge.withColor(color.textPrimary),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.settings, color: color.textPrimary),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(_headerHeight);
}

class ProfileBody extends StatelessWidget {
  const ProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    final padding = context.spacing;
    final color = context.color;
    const avatarUrl =
        'https://plus.unsplash.com/premium_photo-1664369473447-64172945caa0?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mjl8fGdpcmwlMjBwb3J0cmFpdCUyMHByb2Zlc3Npb25hbHxlbnwwfHwwfHx8MA%3D%3Dpor.webp';
    const userName = 'Amber Doe Smith';
    const userAddress = '123 Main St, New York, USA';

    final metricCardItem = [
      MetricCardData(
        title: 'Start weight',
        value: '53.3 kg',
        backgroundColor: color.metricBackgroundGreen,
      ),
      MetricCardData(
        title: 'Goal',
        value: '50.0 kg',
        backgroundColor: color.metricBackgroundBlue,
      ),
      MetricCardData(
        title: 'Daily calories',
        value: '740 kcal',
        backgroundColor: color.metricBackgroundOrange,
      ),
    ];

    final activityItem = [
      const ActivityItemData(
        title: 'Physical Activity',
        subtitle: '2 days ago',
        icon: Icons.directions_run,
      ),
      const ActivityItemData(
        title: 'Statistics',
        subtitle: '109 kilo/year',
        icon: Icons.assessment,
      ),
      const ActivityItemData(
        title: 'Routes',
        subtitle: '109 routes',
        icon: Icons.route,
      ),
      const ActivityItemData(
        title: 'Equipment',
        subtitle: 'Nike pegasus 3000',
        icon: Icons.flash_on,
      ),
      const ActivityItemData(
        title: 'Achievements',
        subtitle: '109 achievements',
        icon: Icons.emoji_events,
      ),
    ];

    return SingleChildScrollView(
      padding: EdgeInsets.all(padding.sm),
      child: Column(
        spacing: padding.sm,
        children: [
          const ProfileUserInfoSection(
            url: avatarUrl,
            name: userName,
            address: userAddress,
          ),
          ProfileMetricSection(
            metrics: metricCardItem,
          ),
          ProfileActivitySection(activities: activityItem),
        ],
      ),
    );
  }
}
