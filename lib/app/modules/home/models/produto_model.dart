// To parse this JSON data, do
//
//     final produtoModel = produtoModelFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

class ProdutoModel {
  final String id;
  final String nome;
  final int valor;
  final TipoOUCategoriaDto tipoProduto;
  final TipoOUCategoriaDto categoriaProduto;

  ProdutoModel({
    @required this.id,
    @required this.nome,
    @required this.valor,
    @required this.categoriaProduto,
    @required this.tipoProduto,
  });

  ProdutoModel copyWith({
    String id,
    String nome,
    int valor,
    TipoOUCategoriaDto tipoProduto,
    TipoOUCategoriaDto categoriaProduto,
  }) =>
      ProdutoModel(
        id: id ?? this.id,
        nome: nome ?? this.nome,
        valor: valor ?? this.valor,
        categoriaProduto: categoriaProduto ?? this.categoriaProduto,
        tipoProduto: tipoProduto ?? this.tipoProduto,
      );

  factory ProdutoModel.fromJson(String str) =>
      ProdutoModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ProdutoModel.fromMap(Map<String, dynamic> json) => ProdutoModel(
        id: json["id"] == null ? null : json["id"],
        nome: json["nome"] == null ? null : json["nome"],
        valor: json["valor"] == null ? null : json["valor"],
        categoriaProduto: json["categoria_produto"] == null
            ? null
            : TipoOUCategoriaDto.fromMap(json["categoria_produto"]),
        tipoProduto: json["tipo_produto"] == null
            ? null
            : TipoOUCategoriaDto.fromMap(json["tipo_produto"]),
      );

  Map<String, dynamic> toMap() => {
        "id": id == null ? null : id,
        "nome": nome == null ? null : nome,
        "valor": valor == null ? null : valor,
        "categoria_produto":
            categoriaProduto == null ? null : categoriaProduto.toMap(),
        "tipo_produto": tipoProduto == null ? null : tipoProduto.toMap(),
      };

  static List<ProdutoModel> fromJsonList(List list) {
    if (list == null) {
      return null;
    } else {
      return list
          .map<ProdutoModel>((item) => ProdutoModel.fromMap(item))
          .toList();
    }
  }
}

class TipoOUCategoriaDto {
  final String descricao;

  TipoOUCategoriaDto({
    @required this.descricao,
  });

  TipoOUCategoriaDto copyWith({
    String descricao,
  }) =>
      TipoOUCategoriaDto(
        descricao: descricao ?? this.descricao,
      );

  factory TipoOUCategoriaDto.fromJson(String str) =>
      TipoOUCategoriaDto.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory TipoOUCategoriaDto.fromMap(Map<String, dynamic> json) =>
      TipoOUCategoriaDto(
        descricao: json["descricao"] == null ? null : json["descricao"],
      );

  Map<String, dynamic> toMap() => {
        "descricao": descricao == null ? null : descricao,
      };
}
