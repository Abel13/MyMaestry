import 'dart:convert';

import 'package:first/api/config/webclient.dart';
import 'package:first/models/item.dart';
import 'package:http/http.dart';

Future<List<Item>> getAllItens(String version) async {
  final Response response = await loggingInterceptor.getInterceptorClient().get(
      'http://ddragon.leagueoflegends.com/cdn/$version/data/pt_BR/item.json');

  final dynamic decodedJson = jsonDecode(response.body);
  Map<String, dynamic> list = decodedJson['data'];

  return list.keys.map((json) {
    return Item.fromJson(list[json], json);
  }).toList();
}
