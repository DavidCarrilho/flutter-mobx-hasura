import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';

class HomeController = _HomeBase with _$HomeController;

abstract class _HomeBase with Store {
  @observable
  List<String> lsitaProdutos = ["1", "2", "3", "4"];
}
