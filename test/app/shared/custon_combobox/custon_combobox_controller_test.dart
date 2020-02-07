import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:app_hasura/app/shared/custon_combobox/custon_combobox_controller.dart';
import 'package:app_hasura/app/app_module.dart';

void main() {
  initModule(AppModule());
  CustonComboboxController custoncombobox;

  setUp(() {
    custoncombobox = AppModule.to.get<CustonComboboxController>();
  });

  group('CustonComboboxController Test', () {
    test("First Test", () {
      expect(custoncombobox, isInstanceOf<CustonComboboxController>());
    });

    test("Set Value", () {
      expect(custoncombobox.value, equals(0));
      custoncombobox.increment();
      expect(custoncombobox.value, equals(1));
    });
  });
}
