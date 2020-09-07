import 'package:flutter/material.dart';

class CurrencyCard extends StatelessWidget {
  final String currencyName;
  final String amount;
  CurrencyCard({@required this.currencyName, this.amount = '0.00'});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      width: 60.0,
      margin: EdgeInsets.only(top: 15.0, left: 30.0, right: 30.0, bottom: 15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Color(0xFF152451),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(
            Icons.monetization_on,
            size: 60.0,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '$currencyName Amount',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 15.0,
                  color: Color(0xFF8a9eb8),
                ),
              ),
              Text(
                '$amount $currencyName',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 30.0,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
