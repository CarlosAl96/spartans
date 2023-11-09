import 'package:spartans/models/tournament/match_model.dart';

class GroupModel {
  String name;
  List<Map<String, dynamic>>? teams;
  List<MatchModel>? matches;

  GroupModel({this.name = '', this.teams, this.matches});
  factory GroupModel.fromJson(Map<String, dynamic> json) {
    return GroupModel(
      name: json['name'] == null ? '' : json['name'] as String,
      teams: json['teams'].map<Map<String, dynamic>>((e) {
        return e as Map<String, dynamic>;
      }).toList(),
      matches: json['matches'].map<MatchModel>((e) {
        return MatchModel.fromJson(e);
      }).toList(),
    );
  }
}
