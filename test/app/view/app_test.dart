// Ignore for testing purposes
// ignore_for_file: prefer_const_constructors

import 'package:fitness_tracker_application/application/application.dart';
import 'package:fitness_tracker_application/counter/counter.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('App', () {
    testWidgets('renders CounterPage', (tester) async {
      await tester.pumpWidget(Application());
      expect(find.byType(CounterPage), findsOneWidget);
    });
  });
}
