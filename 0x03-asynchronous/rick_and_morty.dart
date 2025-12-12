import 'dart:convert';
import 'package:http/http.dart' as http;

Future<List<String>> fetchRmCharacters() async {
  try {
    final response = await http.get(
      Uri.parse('https://rickandmortyapi.com/api/character'),
    );

    if (response.statusCode == 200) {
      final data = json.decode(response.body);

      if (data['results'] is List) {
        return List<String>.from(
          data['results'].map((character) => character['name']),
        );
      } else {
        throw Exception('Invalid response format');
      }
    } else {
      throw Exception(
          'Failed to fetch data - Status code: ${response.statusCode}');
    }
  } catch (error) {
    return ['error caught: $error'];
  }
}
