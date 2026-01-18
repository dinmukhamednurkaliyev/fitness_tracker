import 'package:fitness_tracker_application/appearance/appearance.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class UserGreeting extends StatelessWidget {
  const UserGreeting({
    required this.name,
    super.key,
  });

  final String? name;

  static final _dateFormatter = DateFormat('d MMM');

  @override
  Widget build(BuildContext context) {
    final color = context.color;
    final text = context.text;
    final date = _dateFormatter.format(DateTime.now());
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'Hello, $name',
          style: text.titleMedium.withColor(color.textPrimary),
        ),
        Text(
          'Today $date',
          style: text.bodyMedium.withColor(color.textSecondary),
        ),
      ],
    );
  }
}
