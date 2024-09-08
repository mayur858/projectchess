import 'dart:convert'; // For JSON decoding
import 'package:http/http.dart' as http;
import 'package:projectchess/api/data.dart';

Future<Lichess> fetchAccountDetails(String token) async {
  final response = await http.get(
    Uri.parse('https://lichess.org/api/account'),
    headers: {
      'Authorization': 'Bearer $token',
    },
  );

  // Check if the request was successful
  if (response.statusCode == 200) {
    // Parse the JSON response and return the LichessAccount object
    return Lichess.fromJson(jsonDecode(response.body));
  } else {
    // Handle errors (e.g., invalid token or network issues)
    throw Exception('Failed to load account details');
  }
}
