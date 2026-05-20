import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modern_login/main.dart';

void main() {
  testWidgets('Login screen basic smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that our welcome text is present.
    expect(find.text('እንኳን ደህና መጡ'), findsOneWidget);
    expect(find.text('ይግቡ (Sign In)'), findsOneWidget);
  });
}
