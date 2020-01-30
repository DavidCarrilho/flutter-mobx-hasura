import 'package:app_hasura/app/modules/home/repositories/home_repository.dart';
import 'package:app_hasura/app/modules/home/widgets/card_produto/card_produto_controller.dart';
import 'package:app_hasura/app/modules/home/home_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:app_hasura/app/modules/home/home_page.dart';
import 'package:hasura_connect/hasura_connect.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        // controlers
        Bind((i) => CardProdutoController()),
        Bind((i) => HomeController(i.get<HomeRepository>())),
        // repositories
        Bind((i) => HomeRepository(i.get<HasuraConnect>())),
        Bind((i) => HasuraConnect(
            "https://flutter-loja.herokuapp.com/v1/graphql")), //url onde ele esta
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => HomePage()),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
