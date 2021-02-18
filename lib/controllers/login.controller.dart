import 'package:first/models/summoner.dart';
import 'package:first/store/app.store.dart';

class LoginController {
  AppStore _store;

  LoginController(AppStore store) {
    _store = store;
  }

  void setSummoner(Summoner summoner) async {
    _store.changeSummoner(summoner);
  }
}
