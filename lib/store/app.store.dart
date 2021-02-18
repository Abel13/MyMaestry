import 'package:first/models/champion.dart';
import 'package:first/models/summoner.dart';
import 'package:mobx/mobx.dart';
part 'app.store.g.dart';

class AppStore = _AppStore with _$AppStore;

abstract class _AppStore with Store {
  String actualVersion = "";

  @observable
  Summoner summoner;

  @observable
  ObservableList<Champion> champions = new ObservableList<Champion>();

  @action
  void changeSummoner(Summoner summoner) {
    this.summoner = summoner;
  }

  @action
  void setVersion(String version) {
    actualVersion = version;
  }

  @action
  void setChampions(List<Champion> itens) {
    champions.addAll(itens);
  }
}
