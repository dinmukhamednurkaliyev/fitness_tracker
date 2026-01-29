import 'package:alchemist/alchemist.dart';
import 'package:fitness_tracker_application/appearance/appearance.dart';
import 'package:fitness_tracker_application/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail_image_network/mocktail_image_network.dart';

void main() {
  group('HomeWorkoutSection Golden Tests', () {
    final workouts = [
      const WorkoutCardData(
        title: 'Yoga Group',
        difficulty: 'Medium',
        date: '25 Nov.',
        time: '14:00-15:00',
        room: 'A5 room',
        trainerName: 'Kellie Jetton',
        trainerImage: 'https://example.com/alice.jpg',
        backgroundColor: Colors.blueAccent,
      ),
      const WorkoutCardData(
        title: 'Cardio Group',
        difficulty: 'Hard',
        date: '28 Nov.',
        time: '10:00-11:00',
        room: 'A3 room',
        trainerName: 'Loretta Waller',
        trainerImage: 'https://example.com/bob.jpg',
        backgroundColor: Colors.orangeAccent,
      ),
    ];

    goldenTest(
      'renders correctly',
      fileName: 'home_workout_section',
      pumpWidget: (tester, widget) async {
        await mockNetworkImages(() => tester.pumpWidget(widget));
      },
      builder: () => GoldenTestGroup(
        scenarioConstraints: const BoxConstraints(maxWidth: 600),
        children: [
          GoldenTestScenario(
            name: 'Default',
            child: Theme(
              data: buildTheme(),
              child: SizedBox(
                width: 600,
                child: HomeWorkoutSection(workouts: workouts),
              ),
            ),
          ),
        ],
      ),
    );
  });
}
