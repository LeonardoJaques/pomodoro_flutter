// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contador.store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ContadorStore on _ContadorStore, Store {
  late final _$_contadorAtom =
      Atom(name: '_ContadorStore._contador', context: context);

  @override
  int get _contador {
    _$_contadorAtom.reportRead();
    return super._contador;
  }

  @override
  set _contador(int value) {
    _$_contadorAtom.reportWrite(value, super._contador, () {
      super._contador = value;
    });
  }

  late final _$_ContadorStoreActionController =
      ActionController(name: '_ContadorStore', context: context);

  @override
  void incrementar() {
    final _$actionInfo = _$_ContadorStoreActionController.startAction(
        name: '_ContadorStore.incrementar');
    try {
      return super.incrementar();
    } finally {
      _$_ContadorStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void decrementar() {
    final _$actionInfo = _$_ContadorStoreActionController.startAction(
        name: '_ContadorStore.decrementar');
    try {
      return super.decrementar();
    } finally {
      _$_ContadorStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''

    ''';
  }
}
