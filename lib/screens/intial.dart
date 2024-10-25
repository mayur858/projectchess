import 'package:flutter/material.dart';
import 'package:projectchess/api/data.dart';
import 'package:projectchess/api/info.dart';

class IntialScreen extends StatefulWidget {
  final String title;

  const IntialScreen({super.key, required this.title});

  @override
  State<IntialScreen> createState() => _IntialScreenState();
}

class _IntialScreenState extends State<IntialScreen> {
  Lichess? account; // To store the account details
  Lichess? rating;
  bool isLoading = true; // To show loading spinner

  @override
  void initState() {
    super.initState();
    fetchAccountData(); // Fetch data when the screen initializes
  }

  // Function to fetch account data and update state
  Future<void> fetchAccountData() async {
    try {
      Lichess fetchedAccount =
          await getAccountDetails(); // Fetch account details
      setState(() {
        account = fetchedAccount; // Store fetched account in state
        isLoading = false; // Stop loading spinner
      });
    } catch (err) {
      print('Error fetching account details: $err');
      setState(() {
        isLoading = false; // Stop loading even if there’s an error
      });
    }
  }

  Future<void> fetchRatingData() async {
    try {
      Lichess fetchedRating = await getRatingDetails();
      setState(() {
        rating = fetchedRating;
        isLoading = false;
      });
    } catch (err) {
      print('Error fetching rating Details: $err');
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(widget.title)),
      ),
      body: Center(
        child: isLoading
            ? const CircularProgressIndicator() // Show loading spinner if data is being fetched
            : account != null && rating != null
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Display Account Details
                      Text('Username: ${account!.username}',
                          style: const TextStyle(fontSize: 18)),
                      Text('ID: ${rating!.blitzRating}',
                          style: const TextStyle(fontSize: 18)),

                      // Other UI Elements
                      const SizedBox(height: 20),
                      const Text("Start New Game"),
                      ElevatedButton(
                        style: ButtonStyle(
                            // iconSize: WidgetStatePropertyAll(width),
                            backgroundColor: WidgetStateProperty.all(
                                const Color.fromARGB(255, 36, 169, 58))),
                        onPressed: () => {},
                        child: const Text("New Game"),
                      ),
                      const SizedBox(height: 20),
                      const Text('Puzzle'),
                      ElevatedButton(
                        onPressed: () => {},
                        style: ButtonStyle(
                            backgroundColor: WidgetStateProperty.all(
                                const Color.fromARGB(255, 9, 2, 2))),
                        child: const Text("Play"),
                      ),
                      const SizedBox(height: 20),
                      const Text('Stats'),
                    ],
                  )
                : const Text('Failed to load account details',
                    style: TextStyle(fontSize: 18)),
      ),
    );
  }
}
