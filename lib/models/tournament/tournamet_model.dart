import 'package:spartans/models/tournament/fase_model.dart';
import 'package:spartans/models/tournament/group_model.dart';

class TournamentModel {
  String id;
  String name;
  double meters;
  String region;
  String process;
  String startDate;
  String endDate;
  String type;
  String status;
  String photo;
  List<GroupModel>? groups;
  FaseModel? octavos;
  FaseModel? cuartos;
  FaseModel? semifinal;
  FaseModel? fasefinal;

  TournamentModel({
    this.id = '',
    this.name = '',
    this.meters = 0,
    this.region = '',
    this.process = '',
    this.startDate = '',
    this.endDate = '',
    this.type = '',
    this.status = '',
    this.photo = '',
    this.groups,
    this.octavos,
    this.cuartos,
    this.semifinal,
    this.fasefinal,
  });
  factory TournamentModel.fromJson(Map<String, dynamic> json) {
    return TournamentModel(
      id: json['id'],
      name: json['name'],
      meters: json['meters'] == null ? 0 : json['meters'] as double,
      region: json['region'],
      process: json['process'],
      startDate: json['start_date'],
      endDate: json['end_date'],
      type: json['type_tournamet'],
      status: json['status'],
      photo: json['photo'],
      groups: json['groups'] != null
          ? json['groups'].map<GroupModel>((e) {
              return GroupModel.fromJson(e);
            }).toList()
          : [],
      octavos: json['octavos'] != null
          ? FaseModel.fromJson(json['octavos'])
          : FaseModel(),
      cuartos: json['cuartos'] != null
          ? FaseModel.fromJson(json['cuartos'])
          : FaseModel(),
      semifinal: json['semifinal'] != null
          ? FaseModel.fromJson(json['semifinal'])
          : FaseModel(),
      fasefinal: json['final'] != null
          ? FaseModel.fromJson(json['final'])
          : FaseModel(),
    );
  }
}
