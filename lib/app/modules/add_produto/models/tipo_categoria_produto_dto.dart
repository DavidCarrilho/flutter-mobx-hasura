// To parse this JSON data, do
//
//     final tipoCategoriaProdutoDto = tipoCategoriaProdutoDtoFromJson(jsonString);

import 'dart:convert';

class TipoCategoriaProdutoDto {
  final List<TipoECategoriaProdutoDto> tipoProduto;
  final List<TipoECategoriaProdutoDto> categoriaProduto;

  TipoCategoriaProdutoDto({
    this.tipoProduto,
    this.categoriaProduto,
  });

  TipoCategoriaProdutoDto copyWith({
    List<TipoECategoriaProdutoDto> tipoProduto,
    List<TipoECategoriaProdutoDto> categoriaProduto,
  }) =>
      TipoCategoriaProdutoDto(
        tipoProduto: tipoProduto ?? this.tipoProduto,
        categoriaProduto: categoriaProduto ?? this.categoriaProduto,
      );

  factory TipoCategoriaProdutoDto.fromJson(String str) =>
      TipoCategoriaProdutoDto.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory TipoCategoriaProdutoDto.fromMap(Map<String, dynamic> json) =>
      TipoCategoriaProdutoDto(
        tipoProduto: List<TipoECategoriaProdutoDto>.from(json["tipo_produto"]
            .map((x) => TipoECategoriaProdutoDto.fromMap(x))),
        categoriaProduto: List<TipoECategoriaProdutoDto>.from(
            json["categoria_produto"]
                .map((x) => TipoECategoriaProdutoDto.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "tipo_produto": List<dynamic>.from(tipoProduto.map((x) => x.toMap())),
        "categoria_produto":
            List<dynamic>.from(categoriaProduto.map((x) => x.toMap())),
      };

  static List<TipoCategoriaProdutoDto> fromJsonList(List list) {
    if (list == null) {
      return null;
    } else {
      return list
          .map<TipoCategoriaProdutoDto>(
              (item) => TipoCategoriaProdutoDto.fromMap(item))
          .toList();
    }
  }
}

class TipoECategoriaProdutoDto {
  final String descricao;
  final String id;

  TipoECategoriaProdutoDto({
    this.descricao,
    this.id,
  });

  TipoECategoriaProdutoDto copyWith({
    String descricao,
    String id,
  }) =>
      TipoECategoriaProdutoDto(
        descricao: descricao ?? this.descricao,
        id: id ?? this.id,
      );

  factory TipoECategoriaProdutoDto.fromJson(String str) =>
      TipoECategoriaProdutoDto.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory TipoECategoriaProdutoDto.fromMap(Map<String, dynamic> json) =>
      TipoECategoriaProdutoDto(
        descricao: json["descricao"],
        id: json["id"],
      );

  Map<String, dynamic> toMap() => {
        "descricao": descricao,
        "id": id,
      };
}
