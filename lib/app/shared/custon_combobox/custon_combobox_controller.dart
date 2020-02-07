import 'package:mobx/mobx.dart';

part 'custon_combobox_controller.g.dart';

class CustonComboboxController = _CustonComboboxBase
    with _$CustonComboboxController;

abstract class _CustonComboboxBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
