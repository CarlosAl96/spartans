class UserModel {
  String? image;
  String? biography;
  late final String id;
  late String email;
  late String password;
  late String name;
  String? lastName;
  String? phone;
  String? genere;
  String? club;
  Map<String, dynamic> category;
  int? gamesWon;
  int? points;
  int? gamesLost;
  int? ranking;
  bool? availability;
  bool? canChallenge;
  String? dateBirthday;

  UserModel(
      {this.biography,
      this.category = const {},
      this.club,
      this.dateBirthday,
      this.email = '',
      this.password = '',
      this.genere,
      this.id = '',
      this.image,
      this.lastName,
      this.name = '',
      this.phone,
      this.availability,
      this.canChallenge,
      this.gamesLost,
      this.gamesWon,
      this.points,
      this.ranking});
  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
        id: json['id'] == null ? '' : json['id'],
        biography: json['biography'] == null ? '' : json['biography'],
        category: json['category'] == null
            ? {}
            : json['category'] as Map<String, dynamic>,
        club: json['country_club'] == null ? '' : json['country_club'],
        dateBirthday: json['birth_date'] == null ? '' : json['birth_date'],
        email: json['email'] == null ? '' : json['email'],
        genere: json['gender'] == null ? '' : json['gender'],
        image: json['photo_url'] == null ? '' : json['photo_url'],
        lastName: json['last_name'] == null ? '' : json['last_name'],
        availability:
            json['availability'] == null ? false : json['availability'] as bool,
        canChallenge: json['can_challenge'] == null
            ? false
            : json['can_challenge'] as bool,
        gamesLost: (json['games_lost']) == null ? 0 : json['games_lost'] as int,
        name: json['first_name'] == null ? '' : json['first_name'],
        gamesWon: (json['games_won']) == null ? 0 : json['games_won'] as int,
        points: (json['points']) == null ? 0 : json['points'] as int,
        ranking: (json['ranking']) == null ? 0 : json['ranking'] as int,
        phone: json['phone_number'] == null ? '' : json['phone_number']);
  }

  Map<String, dynamic> toJson() {
    return {
      "ranking": this.ranking,
      "first_name": this.name,
      "password": this.password,
      "last_name": this.lastName,
      "full_name": '${this.name} ${this.lastName ?? ''}',
      "email": this.email,
      "phone_number": this.phone,
      "birth_date": this.dateBirthday,
      "availability": this.availability,
      "can_challenge": this.canChallenge,
      "gender": this.genere,
      "country_club": this.club,
      "biography": this.biography,
      "gamesWon": 0,
      "gamesLost": 0,
      "points": 0,
      "category": this.category
    };
  }
}
