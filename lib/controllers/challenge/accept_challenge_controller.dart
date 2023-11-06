import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:spartans/globals.dart';
import 'package:spartans/models/challenge/accept_challenge_request.dart';

class AcceptChallengeController extends ChangeNotifier {
  String error = '';

  bool isAccepted = false;
  String challengeID = 'none';
  String challengeIDResults = 'none';

  Future<String> acceptChallenge(
      String accessToken, bool isAccepted, String challengeId) async {
    String status = '';
    try {
      print("aceptando reto");

      AcceptChallengeRequest request = AcceptChallengeRequest();

      request.isAccepted = isAccepted;
      request.challengeID = challengeId;

      var uri = Uri.parse(APIREST.challengeURL + 'accept-challenge/');

      final response = await http.post(
        uri,
        body: jsonEncode(request.toJson()),
        headers: {
          'Authorization': 'Bearer $accessToken',
          'Accept': '*/*',
          'Content-Type': 'application/json'
        },
      );

      if (response.statusCode == 204) {
        status = 'success';
      } else {
        status = 'noAutorizate';
      }
    } catch (e) {
      print(e);
      error = e.toString();
    }
    notifyListeners();
    return status;
  }

  Future<String> acceptChallengeResults(
      String accessToken, bool isApproved, String challengeId) async {
    String status = '';
    try {
      print("aceptando resultados");

      Map<String, dynamic> request = {};

      request['isApproved'] = isApproved;
      request['challengeID'] = challengeId;

      var uri = Uri.parse(APIREST.challengeURL + 'approved-result/');

      final response = await http.post(
        uri,
        body: jsonEncode(request),
        headers: {
          'Authorization': 'Bearer $accessToken',
          'Accept': '*/*',
          'Content-Type': 'application/json'
        },
      );

      if (response.statusCode == 204) {
        status = 'success';
      } else {
        status = 'noAutorizate';
        error = (jsonDecode(response.body) as Map<String, dynamic>)["message"];
      }
    } catch (e) {
      print(e);
      error = e.toString();
    }
    notifyListeners();
    return status;
  }

  void setDataFromUrl(String _challengeID, bool _isAccepted) {
    this.challengeID = _challengeID;
    this.isAccepted = _isAccepted;
    notifyListeners();
  }

  void setDataFromUrlResults(String _challengeID) {
    print(_challengeID);
    this.challengeIDResults = _challengeID;
    notifyListeners();
  }
}
