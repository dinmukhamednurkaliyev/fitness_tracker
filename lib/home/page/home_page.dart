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
    final color = context.color;

    final challengeParticipants = [
      'https://images.unsplash.com/photo-1544725176-7c40e5a71c5e?ixlib=rb-1.2.1&auto=format&fit=crop&w=100&q=60',
      'https://images.unsplash.com/photo-1527980965255-d3b416303d12?ixlib=rb-1.2.1&auto=format&fit=crop&w=100&q=60',
      'https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-1.2.1&auto=format&fit=crop&w=100&q=60',
      'https://images.unsplash.com/photo-1528892952291-009c663ce843?ixlib=rb-1.2.1&auto=format&fit=crop&w=100&q=60',
      'https://images.unsplash.com/photo-1528892952291-009c663ce843?ixlib=rb-1.2.1&auto=format&fit=crop&w=100&q=60',
      'https://images.unsplash.com/photo-1528892952291-009c663ce843?ixlib=rb-1.2.1&auto=format&fit=crop&w=100&q=60',
      'https://images.unsplash.com/photo-1528892952291-009c663ce843?ixlib=rb-1.2.1&auto=format&fit=crop&w=100&q=60',
      'https://images.unsplash.com/photo-1528892952291-009c663ce843?ixlib=rb-1.2.1&auto=format&fit=crop&w=100&q=60',
      'https://images.unsplash.com/photo-1528892952291-009c663ce843?ixlib=rb-1.2.1&auto=format&fit=crop&w=100&q=60',
      'https://images.unsplash.com/photo-1528892952291-009c663ce843?ixlib=rb-1.2.1&auto=format&fit=crop&w=100&q=60',
    ];

    final workoutCardItem = [
      WorkoutCardData(
        title: 'Yoga Group',
        difficulty: 'Medium',
        date: '25 Nov.',
        time: '14:00-15:00',
        room: 'A5 room',
        trainerName: 'Kellie Jetton',
        trainerImage:
            'https://images.unsplash.com/photo-1549351236-caca0f174515?q=80&w=928&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3DYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        backgroundColor: color.cardBackgroundYellow,
      ),
      WorkoutCardData(
        title: 'Cardio Group',
        difficulty: 'Hard',
        date: '28 Nov.',
        time: '10:00-11:00',
        room: 'A3 room',
        trainerName: 'Loretta Waller',
        trainerImage:
            'https://images.unsplash.com/photo-1635328372330-757aa2e61d57?q=80&w=774&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        backgroundColor: color.cardBackgroundBlue,
      ),
    ];

    final socialMediaItems = [
      SocialMediaCardData(
        icon: Icons.camera_alt,
        backgroundColor: color.socialPink,
      ),
      SocialMediaCardData(
        icon: Icons.play_circle_outline,
        backgroundColor: color.socialRed,
      ),
      SocialMediaCardData(
        icon: Icons.chat_bubble_outline,
        backgroundColor: color.socialBlue,
      ),
    ];

    return SingleChildScrollView(
      padding: EdgeInsets.all(spacing.sm),
      child: Column(
        spacing: spacing.sm,
        children: [
          HomeDailyChallengeSection(
            challengeParticipants: challengeParticipants,
          ),
          HomeScheduleSection(
            selectedDate: selectedDate,
            onDateSelected: (date) => setState(() {
              selectedDate = date;
            }),
          ),
          HomeWorkoutSection(
            workouts: workoutCardItem,
          ),
          HomeSocialMediaSection(
            socials: socialMediaItems,
          ),
        ],
      ),
    );
  }
}
