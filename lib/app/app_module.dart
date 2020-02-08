import 'package:app_hasura/app/shared/custon_combobox/custon_combobox_controller.dart';
import 'package:app_hasura/app/app_controller.dart';
import 'package:app_hasura/app/modules/add_produto/add_produto_module.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:app_hasura/app/app_widget.dart';
import 'package:app_hasura/app/modules/home/home_module.dart';
import 'package:hasura_connect/hasura_connect.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => CustonComboboxController()),
        Bind((i) => AppController()),
        Bind((i) => HasuraConnect(
            "https://flutter-loja.herokuapp.com/v1/graphql")), //url onde ele esta
      ];

  @override
  List<Router> get routers => [
        Router('/', module: HomeModule()),
        Router('/AddProduto', module: AddProdutoModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
