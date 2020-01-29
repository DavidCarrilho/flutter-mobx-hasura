import 'package:app_hasura/app/modules/home/widgets/card_produto/card_produto_controller.dart';
import 'package:app_hasura/app/modules/home/home_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:app_hasura/app/modules/home/home_page.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => CardProdutoController()),
        Bind((i) => HomeController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => HomePage()),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
