import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:app_hasura/app/shared/custon_combobox/custon_combobox_widget.dart';

main() {
  testWidgets('CustomComboboxWidget has message', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(CustomComboboxWidget()));
    final textFinder = find.text('CustonCombobox');
    expect(textFinder, findsOneWidget);
  });
}
