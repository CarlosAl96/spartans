import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:spartans/globals.dart';
import 'package:spartans/models/list_response/list_response.dart';
import 'package:spartans/models/tournament/tournamet_model.dart';

class TournamentController extends ChangeNotifier {
  String status = '';
  String error = '';
  TournamentModel tournament = TournamentModel();

  Future<String> subscribeToTournament(
      String accessToken, String tournamentID, String? emailTeam) async {
    try {
      Map<String, dynamic> request = {};

      if (emailTeam != null) {
        print('Subscribiendose al torneo doble');
        request['EmailTeam'] = emailTeam;
      } else {
        print('Subscribiendose al torneo single');
      }

      request['tournamentID'] = tournamentID;

      var uri = Uri.parse(APIREST.tournamentURL + 'tournament-subscription/');

      final response = await http.post(
        uri,
        body: jsonEncode(request),
        headers: {
          'Authorization': 'Bearer $accessToken',
          'Accept': '*/*',
          'Content-Type': 'application/json'
        },
      );

      if (response.statusCode == 200) {
        status = 'success';
      } else {
        status = 'noAutorizate';
        error = (jsonDecode(response.body) as Map<String, dynamic>)["message"];
      }

      notifyListeners();
    } catch (e) {
      print(e);
      error = e.toString();
      notifyListeners();
    }
    return status;
  }

  Future<bool> getTournament(String accessToken) async {
    try {
      print("Trayendo torneos");
      var uri = Uri.parse(APIREST.tournamentURL);
      final response = await http.get(uri);

      if (response.statusCode == 200) {
        final tournamentResponse = ListResponseModel.fromJson(
          jsonDecode(response.body) as Map<String, dynamic>,
        );

        tournament = TournamentModel.fromJson(tournamentResponse.results![0]);

        notifyListeners();

        return true;
      }
    } catch (e) {
      print(e);
      return false;
    }

    return false;
  }
}
