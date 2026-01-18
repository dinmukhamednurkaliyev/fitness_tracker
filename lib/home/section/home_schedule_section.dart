import 'package:fitness_tracker_application/appearance/appearance.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomeScheduleSection extends StatelessWidget {
  const HomeScheduleSection({
    required this.selectedDate,
    required this.onDateSelected,
    super.key,
  });

  final DateTime selectedDate;
  final void Function(DateTime) onDateSelected;

  @override
  Widget build(BuildContext context) {
    final spacing = context.spacing;
    final color = context.color;
    final radius = context.radius;
    final now = DateTime.now();
    final startOfWeek = now.subtract(Duration(days: now.weekday - 1));
    return SizedBox(
      height: 60,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 7,
        itemBuilder: (context, index) {
          final date = startOfWeek.add(Duration(days: index));
          final isSelected =
              date.day == selectedDate.day &&
              date.month == selectedDate.month &&
              date.year == selectedDate.year;
          return GestureDetector(
            onTap: () => onDateSelected(date),
            child: Container(
              width: 50,
              margin: EdgeInsets.only(right: spacing.xxxs),
              decoration: BoxDecoration(
                color: isSelected
                    ? color.backgroundBlack
                    : color.backgroundWhite,
                borderRadius: BorderRadius.circular(
                  radius.md,
                ),
                boxShadow: [
                  BoxShadow(
                    color: color.shadowMedium,
                    blurRadius: radius.md,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    DateFormat('E').format(date),
                    style: context.text.labelMedium.withColor(
                      isSelected ? color.textWhite : color.textSecondary,
                    ),
                  ),
                  Text(
                    DateFormat('d').format(date),
                    style: context.text.labelLarge.withColor(
                      isSelected ? color.textWhite : color.textSecondary,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
