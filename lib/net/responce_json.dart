import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:nsplash_to_app/models/list_models.dart';

class UserModelProvider {
  static final _apikey =
      "cf49c08b444ff4cb9e4d126b7e9f7513ba1ee58de7906e4360afc1a33d1bf4c0";
  final _string = 'http://api.unsplash.com/photos/?client_id=$_apikey';
  Future<UserModels> getCurrentUsersModes() async {
    final http.Response response = await http.get(_string);
    if (response.statusCode == 200) {
      return UserModels.fromList(json.decode(response.body));
    } else {
      throw Exception('Failed to load UserModes data');
    }
  }
}
