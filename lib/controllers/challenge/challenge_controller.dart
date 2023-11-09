import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
import 'package:spartans/globals.dart';
import 'package:spartans/models/challenge/challenge_model.dart';
import 'package:spartans/models/challenge/challenge_request.dart';
import 'package:spartans/models/challenge/challenge_results_request.dart';
import 'package:spartans/models/list_response/list_response.dart';

class ChallengeController extends ChangeNotifier {
  String error = '';
  ChallengeModel lastChallenge = ChallengeModel();
  ChallengeModel lastChallengeUser = ChallengeModel();
  ChallengeModel chalengeById = ChallengeModel();

  Future<bool> setChallenge(String accessToken, String id, DateTime datePicked,
      TimeOfDay hourPicked) async {
    bool status = false;
    try {
      print("Creando reto");

      ChallengeRequest request = ChallengeRequest();

      DateTime now = DateTime.now();
      DateTime dateTime = DateTime(
          now.year, now.month, now.day, hourPicked.hour, hourPicked.minute);

      request.user = id;
      request.dateOfChallenge = DateFormat('yyyy-MM-dd').format(datePicked);
      request.hourOfChallenge = DateFormat('HH:mm:ss').format(dateTime);

      var uri = Uri.parse(APIREST.challengeURL);

      final response = await http.post(
        uri,
        body: request.toJson(),
        headers: {
          'Authorization': 'Bearer $accessToken',
        },
      );

      if (response.statusCode == 201) {
        error = '';
        status = true;
      }
      if (response.statusCode == 400) {
        error = (jsonDecode(utf8.decode(response.bodyBytes))
            as Map<String, dynamic>)["message"];
      }
    } catch (e) {
      print(e);
      error = e.toString();
    }
    notifyListeners();
    return status;
  }

  Future<bool> getLastChallenge(
      String accessToken, String idUserProfile, bool isUserAuth) async {
    try {
      var uri = Uri.parse(
          APIREST.challengeURL + 'challenge-profile/' + idUserProfile);

      final response = await http.get(
        uri,
        headers: {
          'Authorization': 'Bearer $accessToken',
        },
      );
      if (response.statusCode == 200) {
        print(response.body);

        final challengeResponse = ListResponseModel.fromJson(
          jsonDecode(response.body) as Map<String, dynamic>,
        );

        if (isUserAuth) {
          lastChallengeUser =
              ChallengeModel.fromJson(challengeResponse.results![0]);
        } else {
          print("lastChallenge user profile");
          lastChallenge =
              ChallengeModel.fromJson(challengeResponse.results![0]);
        }
        notifyListeners();

        return true;
      }
    } catch (e) {
      print(e);
    }

    return false;
  }

  Future<bool> getChallengeById(String accessToken, String idChallenge) async {
    try {
      var uri = Uri.parse(APIREST.challengeURL + idChallenge);

      final response = await http.get(
        uri,
        headers: {
          'Authorization': 'Bearer $accessToken',
        },
      );

      if (response.statusCode == 200) {
        print(response.body);

        chalengeById = ChallengeModel.fromJson(jsonDecode(response.body));

        notifyListeners();

        return true;
      }
    } catch (e) {
      print(e);
    }

    return false;
  }

  Future<bool> sendResults(String accessToken, String challengeId,
      String winnerId, List<Map<String, dynamic>> sets) async {
    bool status = false;
    try {
      ChallengeResultsRequest request = ChallengeResultsRequest();

      request.winner = winnerId;
      request.sets = sets;

      var uri = Uri.parse(APIREST.challengeURL + challengeId + '/');

      final response = await http.patch(
        uri,
        body: jsonEncode(request.toJson()),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $accessToken',
        },
      );

      if (response.statusCode == 202) {
        error = '';
        status = true;
      }
      if (response.statusCode == 400) {
        error = (jsonDecode(utf8.decode(response.bodyBytes))
            as Map<String, dynamic>)["message"];
      }
    } catch (e) {
      print(e);
      error = e.toString();
    }

    notifyListeners();
    return status;
  }
}
