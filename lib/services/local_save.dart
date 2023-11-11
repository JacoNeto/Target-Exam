import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../model/info.dart';

class LocalSave {
  read(String key) async {
    final prefs = await SharedPreferences.getInstance();
    return json.decode(prefs.getString(key) ?? "");
  }

  save(String key, value) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(key, json.encode(value));
  }

  remove(String key) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.remove(key);
  }

  saveInfos(List<Info> infos) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final List<String> infosJson = infos.map((Info info) {
      return jsonEncode(info.toJson());
    }).toList();

    prefs.setStringList("infos", infosJson);
  }

  Future<List<Info>?> loadInfos() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    var infosString = prefs.getStringList('infos');
    print(infosString);
    var infos = <Info>[];
    if (infosString != null) {
      for (var str in infosString) {
        infos.add(Info.fromJson(json.decode(str)));
      }
      print(infosString.length);
      print(infos.length);
      return infos;
    }
    return null;
  }
}
