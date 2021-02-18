import 'dart:convert';

import 'package:first/api/config/webclient.dart';
import 'package:first/store/app.store.dart';
import 'package:http/http.dart';

String versionPath = "https://ddragon.leagueoflegends.com/api/versions.json";

getVersionLol() async {
  final Response res =
      await loggingInterceptor.getInterceptorClient().get(versionPath);
  List<dynamic> json = jsonDecode(res.body);

  // AppStore("Version", json[0].toString());
}
