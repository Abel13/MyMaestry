// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app.store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AppStore on _AppStore, Store {
  final _$summonerAtom = Atom(name: '_AppStore.summoner');

  @override
  Summoner get summoner {
    _$summonerAtom.context.enforceReadPolicy(_$summonerAtom);
    _$summonerAtom.reportObserved();
    return super.summoner;
  }

  @override
  set summoner(Summoner value) {
    _$summonerAtom.context.conditionallyRunInAction(() {
      super.summoner = value;
      _$summonerAtom.reportChanged();
    }, _$summonerAtom, name: '${_$summonerAtom.name}_set');
  }

  final _$championsAtom = Atom(name: '_AppStore.champions');

  @override
  ObservableList<Champion> get champions {
    _$championsAtom.context.enforceReadPolicy(_$championsAtom);
    _$championsAtom.reportObserved();
    return super.champions;
  }

  @override
  set champions(ObservableList<Champion> value) {
    _$championsAtom.context.conditionallyRunInAction(() {
      super.champions = value;
      _$championsAtom.reportChanged();
    }, _$championsAtom, name: '${_$championsAtom.name}_set');
  }

  final _$_AppStoreActionController = ActionController(name: '_AppStore');

  @override
  void changeSummoner(Summoner summoner) {
    final _$actionInfo = _$_AppStoreActionController.startAction();
    try {
      return super.changeSummoner(summoner);
    } finally {
      _$_AppStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setVersion(String version) {
    final _$actionInfo = _$_AppStoreActionController.startAction();
    try {
      return super.setVersion(version);
    } finally {
      _$_AppStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setChampions(List<Champion> itens) {
    final _$actionInfo = _$_AppStoreActionController.startAction();
    try {
      return super.setChampions(itens);
    } finally {
      _$_AppStoreActionController.endAction(_$actionInfo);
    }
  }
}
