import 'package:spartans/models/user_model/user_model.dart';

class ChallengeModel {
  late final String id;
  String? dateOfChallenge;
  String? hourOfChallenge;
  String? daysSinceLastGame;
  String? statusChallenge;
  Map<String, dynamic>? gameInfo;
  bool? acceptChallenge;

  bool? approvedResult;
  UserModel? playerOne;
  UserModel? playerTwo;
  UserModel? playerWinner;

  ChallengeModel(
      {this.gameInfo = const {},
      this.dateOfChallenge = '',
      this.hourOfChallenge = '',
      this.daysSinceLastGame = '',
      this.id = '',
      this.acceptChallenge,
      this.approvedResult,
      this.statusChallenge = '',
      this.playerOne,
      this.playerTwo,
      this.playerWinner});
  factory ChallengeModel.fromJson(Map<String, dynamic> json) {
    return ChallengeModel(
        id: json['id'] == null ? '' : json['id'] ,
        dateOfChallenge:
            json['date_of_challenge'] == null ? '' : json['date_of_challenge'],
        hourOfChallenge:
            json['hour_of_challenge'] == null ? '' : json['hour_of_challenge'],
        daysSinceLastGame: json['days_since_last_game'] == null
            ? ''
            : json['days_since_last_game'],
        gameInfo: json['game_info'] == null
            ? {}
            : json['game_info'] as Map<String, dynamic>,
        acceptChallenge: json['accept_challenge'] == null
            ? false
            : json['accept_challenge'] as bool,
        approvedResult: (json['approved_result']) == null
            ? false
            : json['approved_result'] as bool,
        statusChallenge:
            json['status_challenge'] == null ? '' : json['status_challenge'],
        playerOne:
            UserModel.fromJson(json['player_one'] as Map<String, dynamic>),
        playerTwo:
            UserModel.fromJson(json['player_two'] as Map<String, dynamic>),
        playerWinner: UserModel.fromJson(json['winning_player'] == null
            ? {}
            : json['winning_player'] as Map<String, dynamic>));
  }
}
