import 'package:app_hasura/app/modules/add_produto/add_produto_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:app_hasura/app/modules/add_produto/add_produto_page.dart';

class AddProdutoModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AddProdutoController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => AddProdutoPage()),
      ];

  static Inject get to => Inject<AddProdutoModule>.of();
}
