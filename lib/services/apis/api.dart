import 'dart:io';
import 'dart:convert';

import 'package:http/http.dart' as http;


import '../models/model.dart';

class Api {
  Future<Model> fetchApi() async {
    var myUrl ="https://force-update.herokuapp.com/fu/get_pkgs";
    var myUri = Uri.parse(myUrl);

    var response = await http.get(myUri);
    print("This is my response = ${response.body}");
    if (response.statusCode == 200) {
      Map<String, dynamic> myJsonData = json.decode(response.body);
      var model = Model.fromJson(myJsonData);

      return model;
    } else {
      throw Exception('Failed to load SHIFTS_API');
    }
  }
}