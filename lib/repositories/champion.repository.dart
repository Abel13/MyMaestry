import 'package:first/models/champion.dart';

class ChampionRepository {
  Future<List<Champion>> getAllChampions() async {
    var champs = new List<Champion>();

    // champs.add(
    //   new Champion(
    //     // id: '123',
    //     // info: new Info(attack: 8, defense: 5, difficulty: 3, magic: 4),
    //     // key: 'Ahri',
    //     // lore: 'adasdsa',
    //     // name: 'Ahri',
    //     // tags: ['asdasd', 'asdasd'],
    //     // title: 'A Raposa de 9 Caldas',
    //   ),
    // );
    await Future.delayed(const Duration(milliseconds: 1500), () {});
    return champs;
  }

  Future<String> getSummoner() async {
    await Future.delayed(const Duration(milliseconds: 1500), () {});
    return 'RodizioDeCoxinha';
  }
}
