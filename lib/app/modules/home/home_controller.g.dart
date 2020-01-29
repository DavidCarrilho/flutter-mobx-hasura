// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeBase, Store {
  final _$lsitaProdutosAtom = Atom(name: '_HomeBase.lsitaProdutos');

  @override
  List<String> get lsitaProdutos {
    _$lsitaProdutosAtom.context.enforceReadPolicy(_$lsitaProdutosAtom);
    _$lsitaProdutosAtom.reportObserved();
    return super.lsitaProdutos;
  }

  @override
  set lsitaProdutos(List<String> value) {
    _$lsitaProdutosAtom.context.conditionallyRunInAction(() {
      super.lsitaProdutos = value;
      _$lsitaProdutosAtom.reportChanged();
    }, _$lsitaProdutosAtom, name: '${_$lsitaProdutosAtom.name}_set');
  }
}
