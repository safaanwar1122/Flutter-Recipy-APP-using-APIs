

import 'dart:convert';

import 'package:recipy_app/Utilities/app_url.dart';

import '../Model.dart';


import 'package:http/http.dart' as http;
class RecipyServices {
  Future<RecipyModel> getRecipy(String recipy)async{
    final response=await http.get(Uri.parse(AppUrl.baseUrl));
    if(response.statusCode==200)
      {
        Map<String, dynamic> data=jsonDecode(response.body.toString());
        print(data);
        return RecipyModel.fromJson(data);
      }
    else {
      throw Exception('Data could not be loaded..');
    }

  }
}