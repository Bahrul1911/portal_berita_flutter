import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:portal_berita/model/news_item.dart';
class Service {
  Future<List<Article>?> getData() async {
    List<Article>? list;
    String url = "https://newsapi.org/v2/top-headlines?country=id&category=business&apiKey=b53bb60cf0064e11b176947040659c23";
    var response = await http.get(Uri.parse(url));
    
    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      var result = data["articles"] as List;
      list = result.map<Article>((json) => Article.fromJson(json)).toList();
    }
    return list;
  }
}
