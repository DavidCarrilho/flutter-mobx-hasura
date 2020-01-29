import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:app_hasura/app/modules/home/widgets/card_produto/card_produto_controller.dart';
import 'package:app_hasura/app/modules/home/home_module.dart';

void main() {
  initModule(HomeModule());
  CardProdutoController cardproduto;

  setUp(() {
    cardproduto = HomeModule.to.get<CardProdutoController>();
  });

  group('CardProdutoController Test', () {
    test("First Test", () {
      expect(cardproduto, isInstanceOf<CardProdutoController>());
    });

    test("Set Value", () {
      expect(cardproduto.value, equals(0));
      cardproduto.increment();
      expect(cardproduto.value, equals(1));
    });
  });
}
