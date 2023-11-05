import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:spartans/globals.dart';
import 'package:spartans/models/auth/auth_request.dart';
import 'package:spartans/models/auth/auth_response.dart';

class AuthController extends ChangeNotifier {
  AuthResponseModel auth = AuthResponseModel();
  String error = '';
  String errorRecovery = '';
  Future<void> authCredentials(AuthRequest request) async {
    try {
      final response =
          await http.post(Uri.parse(APIREST.authURL), body: request.toJson());
      if (response.statusCode == 200) {
        this.setAuth(AuthResponseModel.fromJson(
            jsonDecode(response.body) as Map<String, dynamic>));
        error = '';
      } else {
        error = (jsonDecode(response.body) as Map<String, dynamic>)["message"];
      }
    } catch (e) {
      error = e.toString();
      print(e);
    }
    notifyListeners();
  }

  void setAuth(AuthResponseModel auth) {
    this.auth = auth;
    print(this.auth.refresh);
  }

  Future<String> recoveryPassword(String email) async {
    String success = '';
    try {
      final response = await http.post(Uri.parse(APIREST.recoveryPasswordURL),
          body: jsonEncode({'email': email}),
          headers: {'Accept': '*/*', "Content-Type": "application/json"});

      if (response.statusCode == 200) {
        success = 'success';
      } else {
        success =
            (jsonDecode(response.body) as Map<String, dynamic>)["message"];
      }
    } catch (e) {
      print(e);
      success = 'Error';
    }
    return success;
  }

  Future<void> sendRecoveryData(Map<String, dynamic> request) async {
    try {
      final response = await http.post(
          Uri.parse(APIREST.recoveryPasswordSendURL),
          body: jsonEncode(request));
      if (response.statusCode != 200) {
        errorRecovery =
            (jsonDecode(response.body) as Map<String, dynamic>)["message"];
      }
    } catch (e) {
      errorRecovery = e.toString();
    }
    notifyListeners();
  }
}
