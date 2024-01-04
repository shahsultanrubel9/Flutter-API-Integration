import 'package:http/http.dart' as http;

class HomeService {
  // async jar somoy kom lagbe seti age kaj hobe
  Future<http.Response> getData() async {
    String url = "https://jsonplaceholder.typicode.com/posts";
    http.Response response = await http.get(Uri.parse(url));
    return response;
  }
}
