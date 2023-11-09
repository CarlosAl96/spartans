class MatchModel {
  String team1;
  String team2;
  String? winner;
  String matchDate;

  MatchModel(
      {this.team1 = '',
      this.team2 = '',
      this.winner = '',
      this.matchDate = ''});
  factory MatchModel.fromJson(Map<String, dynamic> json) {
    return MatchModel(
      team1: json['team_1'] as String,
      team2: json['team_2'] as String,
      winner: json['winner'] as String,
      matchDate: json['match_date'] == null ? '' : json['match_date'] as String,
    );
  }
}
