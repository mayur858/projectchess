import 'package:projectchess/api/data.dart';
import 'package:projectchess/api/fetch.dart';
import 'package:projectchess/api/keys.dart';
import 'dart:async';

// This function fetches the account details and returns the account object
Future<Lichess> getAccountDetails() async {
  try {
    Lichess account =
        await fetchAccountDetails(token); // Fetch the data using token
    return account; // Return the Lichess object
  } catch (err) {
    print('Error fetching account details: $err');
    // Throw an error to ensure a result is returned if something goes wrong
    throw Exception('Failed to get account details');
  }
}
