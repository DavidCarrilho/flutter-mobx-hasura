import 'package:app_hasura/app/modules/add_produto/models/tipo_categoria_produto_dto.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:hasura_connect/hasura_connect.dart';

class AddProdutoRepository extends Disposable {
  final HasuraConnect _hasuraConnect;

  AddProdutoRepository(this._hasuraConnect);

  Future<TipoCategoriaProdutoDto> getTipoCategoriaProduto() async {
    var query = ''' 
      query getTipoCategoriaProduto {
  tipo_produto {
    descricao
    id
  }
  categoria_produto {
    descricao
    id
  }
}
    ''';

    var snapshot = await _hasuraConnect.query(query);

    var a = TipoCategoriaProdutoDto.fromMap(snapshot["data"]);
    return null;
  }

  //dispose will be called automatically
  @override
  void dispose() {}
}
