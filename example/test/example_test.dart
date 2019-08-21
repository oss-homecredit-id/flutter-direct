import 'package:example/component_list/button_component.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  Widget createWidgetForTesting({Widget child}) {
    return MaterialApp(
      home: child,
    );
  }

  testWidgets("Find Button By ID", (WidgetTester tester) async {
    await tester.pumpWidget(createWidgetForTesting(child: ButtonComponent()));

    expect(find.byKey(Key('primary-button')), findsOneWidget);
  });
}
