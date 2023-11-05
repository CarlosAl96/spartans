import 'package:spartans/models/user_model/user_model.dart';

class AuthResponseModel {
  UserModel? user;
  String? refresh;
  String? access = '';
  AuthResponseModel({this.user, this.refresh, this.access = ''});
  factory AuthResponseModel.fromJson(Map<String, dynamic> json) {
    return AuthResponseModel(
      user: UserModel.fromJson(json['user'] as Map<String, dynamic>),
      refresh: json['refresh'],
      access: json['access'],
    );
  }
}
