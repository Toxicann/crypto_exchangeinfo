import 'dart:convert';
import 'package:http/http.dart' as http;

var coinApi =
    'https://rest.coinapi.io/v1/exchangerate/BTC/USD?apikey=A9BDA070-BE75-4F2F-811B-A3D59AF9B309';

class CoinInfo {
  Future getInfo() async {
    try {
      http.Response response = await http.get(coinApi);
      Map data = jsonDecode(response.body);
      return data['rate'];
    } catch (e) {
      print(e.toString());
    }
  }
}
