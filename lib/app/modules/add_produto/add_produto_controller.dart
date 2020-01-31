import 'package:mobx/mobx.dart';

part 'add_produto_controller.g.dart';

class AddProdutoController = _AddProdutoBase with _$AddProdutoController;

abstract class _AddProdutoBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
