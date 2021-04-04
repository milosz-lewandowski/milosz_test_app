import 'dart:convert';

import 'package:http/http.dart' as http;

Future fetchFromApi(String apiPath) async {
  final url = Uri.http('localhost:8080', apiPath);
  final response = await http.get(url);

  if (response.statusCode == 200) {
    return jsonEncode(response.body);

  } throw Exception('failed to load from api');
}