import 'dart:convert';
import 'package:bloc_http_flutter/model/user_model.dart';
import 'package:http/http.dart';
class UserRepository {
  String userUrl = 'https://reqres.in/api/users?page=1';
   
  Future<List<UserModel>> getUsers() async {
    
    Response response = await get(Uri.parse(userUrl));
    
print("User URL: $userUrl");  
    if(response.statusCode == 200) {
      final List result = jsonDecode(response.body)['data'];
      print(result);
      return result.map((e) => UserModel.fromJson(e)).toList();
    } else {
      throw Exception(response.reasonPhrase);
    }
  }

}