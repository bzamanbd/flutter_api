// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiController {
  static Future getAllPosts() async {
    final allpostsUrl = Uri.parse("https://fakestoreapi.com/products");
    final response = await http.get(allpostsUrl);
    // print(response.statusCode);
    // print(response.body);
    return jsonDecode(response.body);
  }
}
