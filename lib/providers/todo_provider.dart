import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../constants/appConstants.dart';

class TodoProvider with ChangeNotifier {
  @override

  bool isLoading = false;
  List<Map> items = [];

  Future<List?> fetchData() async {
    setState(true);
    final url = '$BASE_URL?page=1&limit=10';
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    if (response.statusCode == 200) {
      final json = jsonDecode(response.body) as Map;
      final result = json['items'] as List;

      return result;
    } else {}
    setState(false);
  }





  static Future<bool> deleteById(String id) async {
    final url = '$BASE_URL/$id';
    final uri = Uri.parse(url);
    final response = await http.delete(uri);
    return response.statusCode == 200;
  }

  Future<bool> submitData(String title, String description) async {
    final body = {
      "title": title,
      "description": description,
      "is_completed": false
    };

    final response = await http.post(Uri.parse(BASE_URL),
        body: jsonEncode(body), headers: {'Content-type': 'application/json'});
    return response.statusCode == 201;
  }

  Future<bool> updateData(String id, String title, String description) async {
    final body = {
      "title": title,
      "description": description,
      "is_completed": false
    };

    final response = await http.post(Uri.parse('$BASE_URL/$id'),
        body: jsonEncode(body), headers: {'Content-type': 'application/json'});
    return response.statusCode == 200;
  }



  void showFailedMessage(String message) {
    final snackBar = SnackBar(
      content: Text(
        message,
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      backgroundColor: Colors.red,
    );
    //ScaffoldMessenger.of(context as BuildContext).showSnackBar(snackBar);
  }
  void setState(bool state) {
    isLoading = state;
    notifyListeners();
  }
}
