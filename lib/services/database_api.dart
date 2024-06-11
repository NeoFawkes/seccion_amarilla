import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class DatabaseAPI
{
  static const baseURL = "";

  static addUser(Map user) async
  {
    try
    {
      final response = await http.post(Uri.parse(baseURL), body:user);

      if(response.statusCode == 200)
      {

      }
      else
      {

      }

    } catch(e)
    {
      debugPrint(e.toString());
    }
  }
}