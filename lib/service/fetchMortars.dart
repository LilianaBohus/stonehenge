import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:stonehenge/model/Mortar.dart';

Future<List<Mortar>> fetchMortars() async {
  // TODO
  const String apiUrl = "";

  final response = await http.get(apiUrl);

  if (response.statusCode == 200) {
    List<Mortar> mortars = (json.decode(response.body) as List)
      .map((data) => Mortar.fromJson(data))
      .toList();
      return mortars;
  } else {
    throw Exception("Failed to load Mortars!");
  }
}