import 'package:http/http.dart' as http;
import 'dart:convert';

class Uza_HttpHelper {
  static const String _baseUrl = 'https://your-api-base-url.com'; // Https base URL

  static Future<Map<String, dynamic>> get(String endpoint) async {
    final response = await http.get(Uri.parse('$_baseUrl/$endpoint'));
    return _handleResponse(response);
  }

  static Future<Map<String, dynamic>> post(String endpoint, dynamic data) async {
    final response = await http.post(
      Uri.parse('$_baseUrl/$endpoint'),
      headers: {'Content-Type': 'application/json'},
      body: json.encode(data),
    );
    return _handleResponse(response);
  }
  // Helper method to make a PUT request
  static Future<Map<String, dynamic>> delete(String endpoint) async{
    final response = await http.delete(Uri.parse('$_baseUrl/$endpoint'));
    return _handleResponse(response);
  } 
//
// Handles the Http response 

  static Map<String, dynamic> _handleResponse(http.Response response) {
    if (response.statusCode == 200) {
      // If server returns an OK response, parse the JSON
      return json.decode(response.body);
    } else {
      // If the server did not return a 200 OK response,
      // throw an exception.
      throw Exception('Failed to load data, status code: ${response.statusCode}');
    }
  }
}
