// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'info_page_mobx.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$InfoPageMobx on InfoPageMobxBase, Store {
  late final _$infosAtom =
      Atom(name: 'InfoPageMobxBase.infos', context: context);

  @override
  ObservableList<Info> get infos {
    _$infosAtom.reportRead();
    return super.infos;
  }

  @override
  set infos(ObservableList<Info> value) {
    _$infosAtom.reportWrite(value, super.infos, () {
      super.infos = value;
    });
  }

  late final _$selectedInfoAtom =
      Atom(name: 'InfoPageMobxBase.selectedInfo', context: context);

  @override
  Info? get selectedInfo {
    _$selectedInfoAtom.reportRead();
    return super.selectedInfo;
  }

  @override
  set selectedInfo(Info? value) {
    _$selectedInfoAtom.reportWrite(value, super.selectedInfo, () {
      super.selectedInfo = value;
    });
  }

  late final _$loadSavedInfoAsyncAction =
      AsyncAction('InfoPageMobxBase.loadSavedInfo', context: context);

  @override
  Future<void> loadSavedInfo() {
    return _$loadSavedInfoAsyncAction.run(() => super.loadSavedInfo());
  }

  late final _$InfoPageMobxBaseActionController =
      ActionController(name: 'InfoPageMobxBase', context: context);

  @override
  void addInfo(String text) {
    final _$actionInfo = _$InfoPageMobxBaseActionController.startAction(
        name: 'InfoPageMobxBase.addInfo');
    try {
      return super.addInfo(text);
    } finally {
      _$InfoPageMobxBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void editInfo(Info info) {
    final _$actionInfo = _$InfoPageMobxBaseActionController.startAction(
        name: 'InfoPageMobxBase.editInfo');
    try {
      return super.editInfo(info);
    } finally {
      _$InfoPageMobxBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeInfo(Info info) {
    final _$actionInfo = _$InfoPageMobxBaseActionController.startAction(
        name: 'InfoPageMobxBase.removeInfo');
    try {
      return super.removeInfo(info);
    } finally {
      _$InfoPageMobxBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
infos: ${infos},
selectedInfo: ${selectedInfo}
    ''';
  }
}
