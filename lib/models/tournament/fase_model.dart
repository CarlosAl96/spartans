import 'package:spartans/models/tournament/match_model.dart';

class FaseModel {
  String status;
  List<MatchModel>? matches;

  FaseModel({
    this.status = '',
    this.matches,
  });
  factory FaseModel.fromJson(Map<String, dynamic> json) {
    return FaseModel(
      status: json['status'] as String,
      matches: json['matches'].map<MatchModel>((e) {
        return MatchModel.fromJson(e);
      }).toList(),
    );
  }
}
