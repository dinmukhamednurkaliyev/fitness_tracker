import 'package:fitness_tracker_application/appearance/appearance.dart';
import 'package:fitness_tracker_application/home/home.dart';
import 'package:fitness_tracker_application/profile/profile.dart';
import 'package:fitness_tracker_application/session/session.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

GoRouter buildRouter() {
  return GoRouter(
    initialLocation: '/home',
    routes: [
      StatefulShellRoute.indexedStack(
        builder: (context, state, shell) => BottomNavigationScaffold(shell: shell),
        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/home',
                name: 'home',
                pageBuilder: (context, state) => const NoTransitionPage(child: HomePage()),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/session',
                name: 'session',
                pageBuilder: (context, state) => const NoTransitionPage(child: SessionPage()),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/profile',
                name: 'profile',
                pageBuilder: (context, state) => const NoTransitionPage(child: ProfilePage()),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}

class BottomNavigationScaffold extends StatelessWidget {
  const BottomNavigationScaffold({required this.shell, super.key});

  final StatefulNavigationShell shell;

  void _onTap(int index) {
    shell.goBranch(
      index,
      initialLocation: index == shell.currentIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    final color = context.color;
    final padding = context.padding;
    final radius = context.radius;
    return Scaffold(
      body: shell,
      bottomNavigationBar: SizedBox(
        height: 100,
        child: Container(
          margin: EdgeInsets.only(
            bottom: padding.xxl,
            top: padding.xxs,
            left: padding.xxl,
            right: padding.xxl,
          ),
          padding: EdgeInsets.symmetric(vertical: padding.xxs),
          decoration: BoxDecoration(
            color: color.bottomNavigationBackground,
            borderRadius: BorderRadius.circular(radius.xxxl),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _NavigationItem(
                icon: Icons.home_outlined,
                isSelected: shell.currentIndex == 0,
                onTap: () => _onTap(0),
              ),
              _NavigationItem(
                icon: Icons.fitness_center_outlined,
                isSelected: shell.currentIndex == 1,
                onTap: () => _onTap(1),
              ),
              _NavigationItem(
                icon: Icons.person_outline,
                isSelected: shell.currentIndex == 2,
                onTap: () => _onTap(2),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _NavigationItem extends StatelessWidget {
  const _NavigationItem({
    required this.icon,
    required this.isSelected,
    required this.onTap,
  });

  final IconData icon;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final color = context.color;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 56,
        height: 56,
        decoration: BoxDecoration(
          color: isSelected ? color.backgroundPrimary : Colors.transparent,
          shape: BoxShape.circle,
        ),
        child: Icon(
          icon,
          color: isSelected ? color.backgroundSecondary : color.backgroundPrimary,
          size: 24,
        ),
      ),
    );
  }
}
