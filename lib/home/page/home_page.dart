import 'package:fitness_tracker_application/appearance/appearance.dart';
import 'package:fitness_tracker_application/home/home.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final color = context.color;
    const avatarUrl =
        'https://plus.unsplash.com/premium_photo-1664369473447-64172945caa0?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mjl8fGdpcmwlMjBwb3J0cmFpdCUyMHByb2Zlc3Npb25hbHxlbnwwfHwwfHx8MA%3D%3Dpor.webp';
    const userName = 'Amber';
    return Scaffold(
      backgroundColor: color.backgroundPrimary,
      appBar: const HomeHeader(
        userName: userName,
        avatarUrl: avatarUrl,
      ),
      body: const HomeBody(),
    );
  }
}

class HomeHeader extends StatelessWidget implements PreferredSizeWidget {
  const HomeHeader({
    super.key,
    this.userName,
    this.avatarUrl,
  });

  final String? avatarUrl;
  final String? userName;

  static const double _headerHeight = 100;

  @override
  Widget build(BuildContext context) {
    final color = context.color;
    final spacing = context.spacing;
    return AppBar(
      titleSpacing: spacing.sm,
      elevation: 0,
      scrolledUnderElevation: 0,
      backgroundColor: color.backgroundPrimary,
      toolbarHeight: _headerHeight,
      title: Row(
        spacing: spacing.sm,
        children: [
          UserAvatar(url: avatarUrl),
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

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  DateTime selectedDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    final spacing = context.spacing;
    return Padding(
      padding: EdgeInsets.all(spacing.sm),
      child: SingleChildScrollView(
        child: Column(
          spacing: spacing.sm,
          children: [
            const HomeDailyChallengeSection(),
            HomeScheduleSection(
              selectedDate: selectedDate,
              onDateSelected: (date) => setState(() {
                selectedDate = date;
              }),
            ),
            const HomeWorkoutPlanSection(),
            const HomeSocialMediaSection(),
          ],
        ),
      ),
    );
  }
}
