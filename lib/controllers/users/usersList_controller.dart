import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:spartans/globals.dart';
import 'package:spartans/models/list_response/list_response.dart';
import 'package:spartans/models/user_model/user_model.dart';

class UsersListController extends ChangeNotifier {
  List<UserModel> usersList = [];

  UserModel userProfile = UserModel();

  Future<void> getUsers(String accessToken) async {
    try {
      usersList = [];

      print("trayendo usuarios");

      var uri = Uri.parse(APIREST.usersURL);
      final response = await http.get(
        uri,
        headers: {
          'Authorization': 'Bearer $accessToken',
        },
      );

      if (response.statusCode == 200) {
        print(response.body);

        final usersResponse = ListResponseModel.fromJson(
          jsonDecode(response.body) as Map<String, dynamic>,
        );

        for (var i = 0; i < usersResponse.results!.length; i++) {
          usersList.add(UserModel.fromJson(usersResponse.results![i]));
        }

        notifyListeners();
      }
    } catch (e) {
      print(e);
    }
  }

  setUserProfile(UserModel user) {
    print(user.name + ' ' + user.lastName!);
    userProfile = user;
    notifyListeners();
  }
}
