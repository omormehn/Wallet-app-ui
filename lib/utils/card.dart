// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final double balance;
  final int cardNumber;
  final String expiryMonth;
  final int expiryYear;
  final String cardHolderName;
  final color;



  const MyCard({super.key,  required this.balance,  required this.cardNumber,  required this.expiryMonth,  required this.expiryYear, required this.cardHolderName, required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Container(
        width: 300,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(10)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                 Text(
                  'Account Balance',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  height: 20,
                ),
                Image.asset('lib/icons/visa.png', height: 20,),
                
           
              ],
            ),
           
            Text('\$' + balance.toString(),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                  fontWeight: FontWeight.bold
                )),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(cardNumber.toString(), style: TextStyle(color: Colors.white)),
                Text(
                  expiryMonth + '/' + expiryYear.toString(),
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            SizedBox(height: 5.0),
            Text(
              cardHolderName,
              style: TextStyle(
                color: Colors.white,
              ),
              )
          ],
        ),
      ),
    );
  }
}
