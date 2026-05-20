import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modern_login/main.dart';

void main() {
  testWidgets('Login screen basic smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that the core MaterialApp widget loads successfully.
    expect(find.byType(MaterialApp), findsOneWidget);
    
    // Check that our login input fields load successfully.
    expect(find.byType(TextFormField), findsAtLeast(1));
  });
}
