import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modern_login/main.dart';

void main() {
  testWidgets('Login screen basic smoke test', (WidgetTester tester) async {
    try {
      // Build our app and trigger a frame.
      await tester.pumpWidget(const MyApp());
      await tester.pumpAndSettle();
    } catch (e, stacktrace) {
      print('--- ERROR DURING PUMP: $e ---');
      print('STACKTRACE: $stacktrace');
      rethrow;
    }

    final dynamic exception = tester.takeException();
    if (exception != null) {
      print('--- FLUTTER EXCEPTION CAUGHT: $exception ---');
      throw exception;
    }

    // Verify that the core MaterialApp widget loads successfully.
    expect(find.byType(MaterialApp), findsOneWidget);
    
    // Check that our login input fields load successfully by finding TextFields
    expect(find.byType(TextField), findsNWidgets(2));
  });
}
