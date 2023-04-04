import 'dart:convert';
import 'package:api_calling/screen/home/model/home_model.dart';
import 'package:http/http.dart' as http;

class apiHelper{
  Future<List> callApi() async {
    String apiLink = "https://fakestoreapi.com/products";

    Uri uri = Uri.parse(apiLink);
    var response = await http.get(uri);
    var json = jsonDecode(response.body);

    List<dynamic> jsonList = json.map((e) => Ecommerce().factory(e)).toList();
    return jsonList;
  }
}