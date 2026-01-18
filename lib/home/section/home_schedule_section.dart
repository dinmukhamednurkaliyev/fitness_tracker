import 'package:fitness_tracker_application/appearance/appearance.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomeScheduleSection extends StatelessWidget {
  const HomeScheduleSection({
    required this.selectedDate,
    required this.onDateSelected,
    this.startDate,
    super.key,
  });

  final DateTime selectedDate;
  final DateTime? startDate;
  final void Function(DateTime) onDateSelected;

  @override
  Widget build(BuildContext context) {
    final spacing = context.spacing;
    final color = context.color;
    final radius = context.radius;

    final effectiveStartDate =
        startDate ??
        selectedDate.subtract(Duration(days: selectedDate.weekday - 1));

    return SizedBox(
      height: 60,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 7,
        itemBuilder: (context, index) {
          final date = effectiveStartDate.add(Duration(days: index));
          final isSelected =
              date.day == selectedDate.day &&
              date.month == selectedDate.month &&
              date.year == selectedDate.year;
          return GestureDetector(
            onTap: () => onDateSelected(date),
            child: Container(
              width: spacing.xxl + spacing.sm,
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
