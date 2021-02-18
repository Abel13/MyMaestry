import 'package:first/api/http_champion.dart';
import 'package:first/api/http_match.dart';
import 'package:first/api/http_ranked.dart';
import 'package:first/api/http_summoner.dart';
import 'package:first/models/champion.dart';
import 'package:first/models/informationModel.dart';
import 'package:first/models/lastPlayedGame.dart';
import 'package:first/models/ranked.dart';
import 'package:first/models/summoner.dart';

Future<InformationModel> getAllInformation(String summonerName) async {
  Summoner summoner = new Summoner();
  List<Champion> listMastery = new List();
  List<Ranked> ranked = new List();
  List<LastPlayedGame> lastPlayedGame = new List();

  summoner = await getSummonerCredentials(summonerName);
  listMastery = await getHighMasteryChamp(summoner.id);
  ranked = await getRankedStats(summoner.id);
  lastPlayedGame = await getLastPlayedGames(summoner.accountId);

  return InformationModel(
      summoner: summoner,
      // champions: listMastery,
      rankedSts: ranked,
      lastPlayedGame: lastPlayedGame);
}
