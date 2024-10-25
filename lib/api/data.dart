class Lichess {
  String id;
  String username;
  String blitzRating;

  Lichess(
      {required this.id, required this.username, required this.blitzRating});

  // Factory constructor to create a LichessAccount from JSON
  factory Lichess.fromJson(Map<String, dynamic> json) {
    return Lichess(
      id: json['id'],
      username: json['username'],
      blitzRating: json['prefs']['blitz'],
    );
  }
}
