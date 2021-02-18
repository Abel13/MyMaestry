import 'package:first/repositories/champion.repository.dart';
import 'package:first/store/app.store.dart';

class ChampionController {
  AppStore _store;
  ChampionRepository _repository;

  ChampionController(AppStore store) {
    _store = store;
    _repository = new ChampionRepository();
  }
}
