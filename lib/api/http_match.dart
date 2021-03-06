import 'dart:convert';

import 'package:first/api/config/webclient.dart';
import 'package:first/api/http_summoner.dart';
import 'package:first/models/lastPlayedGame.dart';
import 'package:first/models/spectator.dart';
import 'package:first/models/summoner.dart';
import 'package:http/http.dart';

final path = 'lol/match/v4/matchlists/by-account/';
final pathActiveGame = 'lol/spectator/v4/active-games/by-summoner/';

Future<List<LastPlayedGame>> getLastPlayedGames(
    String encryptedAccountId) async {
  final Response response = await loggingInterceptor.getInterceptorClient().get(
        baseUrl + path + encryptedAccountId,
        headers: headers,
      );

  final dynamic decodedJson = jsonDecode(response.body);
  final List<dynamic> list = decodedJson['matches'];
  return list.map(
    (dynamic json) {
      return LastPlayedGame.fromJson(json);
    },
  ).toList();
}

Future<Spectator> getRunningGame(String summonerName) async {
  Summoner summoner = await getSummonerCredentials(summonerName);

  final Response response = await loggingInterceptor.getInterceptorClient().get(
        baseUrl + pathActiveGame + summoner.id,
        headers: headers,
      );

  final dynamic decodedJson = jsonDecode(response.body);
  return Spectator.fromJson(decodedJson);
}
