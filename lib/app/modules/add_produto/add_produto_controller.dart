import 'package:app_hasura/app/modules/add_produto/repositories/add_produto_repository.dart';
import 'package:mobx/mobx.dart';

part 'add_produto_controller.g.dart';

class AddProdutoController = _AddProdutoBase with _$AddProdutoController;

abstract class _AddProdutoBase with Store {
  final AddProdutoRepository addProdutoRepository;

  @observable
  int value = 0;

  _AddProdutoBase(this.addProdutoRepository) {
    addProdutoRepository.getTipoCategoriaProduto().then((data) {
      print(data);
    });
  }

  @action
  void increment() {
    value++;
  }
}
