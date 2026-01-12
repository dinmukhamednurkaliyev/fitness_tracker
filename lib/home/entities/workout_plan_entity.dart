import 'package:flutter/material.dart';

@immutable
class WorkoutPlan {
  const WorkoutPlan({
    required this.title,
    required this.difficulty,
    required this.date,
    required this.time,
    required this.room,
    required this.trainerName,
    required this.trainerImage,
    required this.backgroundColor,
  });
  final String title;
  final String difficulty;
  final String date;
  final String time;
  final String room;
  final String trainerName;
  final String trainerImage;
  final Color backgroundColor;
}
