import 'dart:convert';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:spartans/globals.dart';
import 'package:spartans/models/category/category_model.dart';
import 'package:spartans/models/list_response/list_response.dart';

class RegisterController extends ChangeNotifier {
  String? image;
  String? biography;
  late final int id;
  late String email;
  late String password;
  late String name;
  String? lastName;
  String? phone;
  String? genere;
  String? club;
  String category = '';
  String error = '';
  String errorPass = '';
  bool photoRequired = false;
  String? dateBirthday;
  bool activeBtn = false;

  List<CategoryModel> categories = [];
  List<String> categoriesList = [];

  void changeValueBtn(dynamic value) {
    activeBtn = value as bool;
    notifyListeners();
  }

  void validPassword(bool value) {
    if (!value) {
      errorPass = 'Las contraseñas no coinciden';
    } else {
      errorPass = '';
    }

    notifyListeners();
  }

  void insertStep1(String email, String password) {
    this.email = email;
    this.password = password;
    notifyListeners();
  }

  void insertStep2(String name, String lastName, String phone, String genere) {
    this.name = name;
    this.lastName = lastName;
    this.phone = phone;
    this.genere = genere;
    notifyListeners();
  }

  void insertStep3(String club, String category, String dateBirthday) {
    this.club = club;
    this.category = category;
    this.dateBirthday = dateBirthday;
    notifyListeners();
  }

  void insertStep4(String biography) {
    this.biography = biography;
    notifyListeners();
  }

  void changePhotoRequired(dynamic value) {
    photoRequired = value as bool;
    notifyListeners();
  }

  Future<Map<String, dynamic>> registerData(
      PlatformFile file, String biography) async {
    Map<String, String> requestBody = <String, String>{
      'email': this.email,
      'password': this.password,
      'birth_date': this.dateBirthday!,
      'phone_number': this.phone!,
      'first_name': this.name,
      'last_name': this.lastName!,
      'category': 'A',
      'biography': biography,
      'gender': genders[this.genere!.toLowerCase()],
    };
    try {
      print(requestBody);
      var uri = Uri.parse(APIREST.usersURL);
      var request = http.MultipartRequest('POST', uri)
        ..headers.addAll({
          'Accept': '*/*',
          "Content-Type": "multipart/form-data"
        }) //if u have headers, basic auth, token bearer... Else remove line
        ..fields.addAll(requestBody);
      request.files.add(http.MultipartFile.fromBytes('photo_url', file.bytes!,
          filename: file.name));

      var response = await request.send();
      final data = await response.stream.bytesToString();
      if (response.statusCode == 201) {
        error = '';
      }
      if (response.statusCode != 201) {
        error = (jsonDecode(data) as Map<String, dynamic>)["message"];
      }

      notifyListeners();
      return jsonDecode(data) as Map<String, dynamic>;
    } catch (e) {
      print(e);
      notifyListeners();
      error = e.toString();
      return {'message': e.toString()};
    }
  }

  Future<Map<String, dynamic>> editDataUser(String accessToken, String uid,
      PlatformFile? file, Map<String, String> dataReq) async {
    Map<String, String> requestBody = dataReq;
    try {
      print(requestBody);
      print(accessToken);
      print(uid);
      var uri = Uri.parse(APIREST.usersURL + uid + '/');
      var request = http.MultipartRequest('PATCH', uri)
        ..headers.addAll({
          'Accept': '*/*',
          "Content-Type": "multipart/form-data",
          'Authorization': 'Bearer $accessToken',
        }) //if u have headers, basic auth, token bearer... Else remove line
        ..fields.addAll(requestBody);

      if (file!.bytes != null) {
        request.files.add(http.MultipartFile.fromBytes('photo_url', file.bytes!,
            filename: file.name));
      }

      var response = await request.send();
      final data = await response.stream.bytesToString();
      error = (jsonDecode(data) as Map<String, dynamic>)["message"];
      notifyListeners();
      return jsonDecode(data) as Map<String, dynamic>;
    } catch (e) {
      print(e);
      notifyListeners();
      error = e.toString();
      return {'message': e.toString()};
    }
  }

  Future<void> getCategories() async {
    try {
      categories = [];
      categoriesList = [];

      print("getCategories Ejecutandose");
      var uri = Uri.parse(APIREST.categoryURL);
      final response = await http.get(uri);

      if (response.statusCode == 200) {
        print(response.body);

        final categoriesResponse = ListResponseModel.fromJson(
          jsonDecode(response.body) as Map<String, dynamic>,
        );

        for (var i = 0; i < categoriesResponse.results!.length; i++) {
          categories
              .add(CategoryModel.fromJson(categoriesResponse.results![i]));

          categoriesList
              .add(CategoryModel.fromJson(categoriesResponse.results![i]).name);
        }

        notifyListeners();
      }
    } catch (e) {
      print(e);
    }
  }
}
