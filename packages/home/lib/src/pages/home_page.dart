import 'package:appearance/appearance.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:home/home.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeController(),
      child: Builder(
        builder: (context) {
          context.read<HomeController>().loadData(context.color);
          return BlocBuilder<HomeController, HomeControllerState>(
            builder: (context, state) {
              return context.layout.scaffold(
                appBar: _HomeHeader(
                  userName: state.userName,
                  avatarUrl: state.avatarUrl,
                ),
                body: const _HomeBody(),
              );
            },
          );
        },
      ),
    );
  }
}

class _HomeHeader extends StatelessWidget implements PreferredSizeWidget {
  const _HomeHeader({
    this.userName,
    this.avatarUrl,
  });

  final String? avatarUrl;
  final String? userName;

  static const double _headerHeight = 100;

  @override
  Widget build(BuildContext context) {
    final spacing = context.spacing;
    return context.layout.appBar(
      toolbarHeight: _headerHeight,
      title: Row(
        spacing: spacing.sm,
        children: [
          context.image.avatar(url: avatarUrl),
          Expanded(
            child: UserGreeting(
              name: userName,
            ),
          ),
          const SearchButton(),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(_headerHeight);
}

class _HomeBody extends StatelessWidget {
  const _HomeBody();

  @override
  Widget build(BuildContext context) {
    final state = context.watch<HomeController>().state;
    final controller = context.read<HomeController>();

    return context.layout.scrollable(
      children: [
        HomeDailyChallengeSection(
          challengeParticipants: state.challengeParticipants,
        ),
        HomeScheduleSection(
          selectedDate: state.selectedDate,
          onDateSelected: controller.updateDate,
        ),
        HomeWorkoutSection(
          workouts: state.workouts,
        ),
        HomeSocialMediaSection(
          socials: state.socials,
        ),
      ],
    );
  }
}
