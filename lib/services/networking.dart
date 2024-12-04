import 'dart:convert';
import 'package:http/http.dart' as http;

class NetworkHelper {
  final String ApiUrl;
  int? statusCode;
  NetworkHelper(this.ApiUrl);

  Future<Map<String, dynamic>?> getData() async {
    final String url = ApiUrl;

    http.Response response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      String data = response.body;
      var decodedData = jsonDecode(data);
      return decodedData;
    } else {
      statusCode = response.statusCode;
      return null;
    }
  }
}
