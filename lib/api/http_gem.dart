import 'dart:convert';

import 'package:first/api/config/webclient.dart';
import 'package:first/models/gem.dart';
import 'package:http/http.dart';

final String path =
    'https://raw.communitydragon.org/latest/plugins/rcp-be-lol-game-data/global/default/v1/perks.json';

Future<List<Gem>> getAllGems() async {
  final Response response = await loggingInterceptor.getInterceptorClient().get(
        path,
      );

  final List<dynamic> decodedJson = jsonDecode(response.body);

  return decodedJson.map((dynamic json) {
    return Gem.fromJson(json);
  }).toList();
}
