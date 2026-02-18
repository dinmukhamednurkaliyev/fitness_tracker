import 'package:appearance/appearance.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:profile/profile.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProfileController(),
      child: Builder(
        builder: (context) {
          context.read<ProfileController>().loadProfile(context.color);
          return BlocBuilder<ProfileController, ProfileControllerState>(
            builder: (context, state) {
              return context.layout.scaffold(
                appBar: const _ProfileHeader(),
                body: const _ProfileBody(),
              );
            },
          );
        },
      ),
    );
  }
}

class _ProfileHeader extends StatelessWidget implements PreferredSizeWidget {
  const _ProfileHeader();

  static const double _headerHeight = 100;

  @override
  Widget build(BuildContext context) {
    final color = context.color;
    final text = context.text;
    return context.layout.appBar(
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

class _ProfileBody extends StatelessWidget {
  const _ProfileBody();

  @override
  Widget build(BuildContext context) {
    final state = context.watch<ProfileController>().state;

    return context.layout.scrollable(
      children: [
        ProfileUserInfoSection(
          url: state.userAvatarUrl,
          name: state.userName,
          address: state.userAddress,
        ),
        ProfileMetricSection(
          metrics: state.metrics,
        ),
        ProfileActivitySection(activities: state.activities),
      ],
    );
  }
}
