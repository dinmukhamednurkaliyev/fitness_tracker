import 'package:appearance/appearance.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:home/home.dart';
import 'package:profile/profile.dart';
import 'package:session/session.dart';

GoRouter buildRouter() {
  return GoRouter(
    initialLocation: '/home',
    routes: [
      StatefulShellRoute.indexedStack(
        builder: (context, state, shell) => context.layout.shell(
          shell: shell,
          items: [
            (icon: Icons.home_outlined, index: 0),
            (icon: Icons.fitness_center_outlined, index: 1),
            (icon: Icons.person_outline, index: 2),
          ],
        ),
        branches: [
          _branch(Routes.home, const HomePage()),
          _branch(Routes.session, const SessionPage()),
          _branch(Routes.profile, const ProfilePage()),
        ],
      ),
    ],
  );
}

StatefulShellBranch _branch(String name, Widget child) {
  return StatefulShellBranch(
    routes: [
      GoRoute(
        path: '/$name',
        name: name,
        pageBuilder: (context, state) => NoTransitionPage(child: child),
      ),
    ],
  );
}
