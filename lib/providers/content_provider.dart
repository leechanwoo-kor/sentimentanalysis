import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:sentimentanalysis/models/content.dart';

class contentProvier {
  Uri uri = Uri.parse("http://flaskmli.azurewebsites.net/nlp/sa/alldata=");
  Future<List<Content>> getNews() async {
    List<Content> contents = [];

    final response = await http.get(uri);

    if (response.statusCode == 200) {
      contents = jsonDecode(response.body)['articles'].map<Content>((article) {
        return Content.fromMap(article);
      }).toList();
    }

    return contents;
  }
}
