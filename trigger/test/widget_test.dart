

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:trigger/main.dart';

void main() {
  testWidgets('foo test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const TriggerCommandApp());

    // Verify that our counter starts at 0.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);


  });
}
