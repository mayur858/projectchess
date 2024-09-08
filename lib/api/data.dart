class Lichess {
  String id;
  String username;

  Lichess({required this.id, required this.username});

  // Factory constructor to create a LichessAccount from JSON
  factory Lichess.fromJson(Map<String, dynamic> json) {
    return Lichess(
      id: json['id'],
      username: json['username'], 
    );
  }
}
