import 'package:flutter/material.dart';

import 'coininfo.dart';
import 'currencycard.dart';

class TestApi extends StatefulWidget {
  @override
  _TestApiState createState() => _TestApiState();
}

class _TestApiState extends State<TestApi> {
  void initState() {
    super.initState();
    getCoinInfo();
  }

  var rate;
  void getCoinInfo() async {
    CoinInfo coinInfo = CoinInfo();
    rate = await coinInfo.getInfo();
    setState(() {
      return rate.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      minimum: EdgeInsets.only(top: 49.0),
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'CryptXchange',
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
        ),
        body: Container(
          decoration: BoxDecoration(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 25.0,
                width: double.infinity,
                child: Text(''),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: Text(
                  'Exchange Info',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                ),
              ),
              CurrencyCard(
                currencyName: 'BTC',
                amount: '1.00',
              ),
              Icon(
                Icons.swap_vert,
                size: 60,
              ),
              CurrencyCard(
                currencyName: 'USD',
                amount: rate,
              ),
              RaisedButton(
                onPressed: null,
                child: Text('Generate'),
                color: Colors.purpleAccent,
              )
            ],
          ),
        ),
      ),
    );
  }
}
