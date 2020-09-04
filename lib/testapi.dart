import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

class TestApi extends StatefulWidget {
  @override
  _TestApiState createState() => _TestApiState();
}

class _TestApiState extends State<TestApi> {
  void initState() {
    super.initState();
    getCoinInfo();
  }

  Future getInfo() async {
    print('test 1');
    http.Response response = await http.get(
        'https://rest.coinapi.io/v1/exchangerate/BTC/USD?apikey=A9BDA070-BE75-4F2F-811B-A3D59AF9B309');
    print('test 2');
    print(response.body);
    String data = jsonDecode(response.body);
    print(data);
    return response.body;
  }

  void getCoinInfo() async {
    print('test 3');
    var data = await getInfo();
    print('test 4');
    print(data);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          // child: FloatingActionButton(onPressed: () {
          //   getInfo();
          // }),
          ),
    );
  }
}
