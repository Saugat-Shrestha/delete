import 'package:delete/Features/pages/home/models/home_ui_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HomeRepo {
  static Future<List<HomeDataUiModel>> fetchEvent() async {
    var client = http.Client();
    List<HomeDataUiModel> posts = [];

    try {
      var response = await client
          .get(Uri.parse("https://jsonplaceholder.typicode.com/posts/"));
      List result = jsonDecode(response.body);

      for (int i = 0; i < result.length; i++) {
        HomeDataUiModel post =
            HomeDataUiModel.fromMap(result[i] as Map<String, dynamic>);
        posts.add(post);
      }
      return posts;
    } catch (e) {
      print(e.toString());
      return [];
    }
  }
}
