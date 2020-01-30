import 'package:app_hasura/app/modules/home/models/produto_model.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:hasura_connect/hasura_connect.dart';

class HomeRepository extends Disposable {
  final HasuraConnect _hasuraConnect;

  HomeRepository(this._hasuraConnect);

  Future<List<ProdutoModel>> getProduto() async {
    // buscar do servidor
    var query = ''' 
      query getProdutos {
      produto {
        id
        nome
        valor
          categoria_produto {
            descricao
          }
          tipo_produto {
            descricao
          } 
        }
      }
    ''';

    var snapshot = await _hasuraConnect.query(query);

    return ProdutoModel.fromJsonList(snapshot["data"]["produto"] as List);
  }

  //dispose will be called automatically
  @override
  void dispose() {}
}
