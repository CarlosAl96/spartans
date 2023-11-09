import 'dart:convert';

class ChallengeResultsRequest {
  String winner = '';
  List<Map<String, dynamic>> sets;
  ChallengeResultsRequest({this.winner = '', this.sets = const [{}]});
  Map<String, dynamic> toJson() => {
        'winning_player': this.winner,
        'sets': this.sets,
      };
}
