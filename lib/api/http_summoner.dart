import 'package:first/api/config/webclient.dart';
import 'package:first/models/summoner.dart';

final String path = 'lol/summoner/v4/summoners/by-name/';

Future<Summoner> getSummonerCredentials(String summonerName) async {
  return Summoner.fromJson(await getWebClient(path, summonerName));
}
