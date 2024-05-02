import 'dart:async';

import 'package:flutter/material.dart';

class clockPage extends StatefulWidget {
  const clockPage({super.key});

  @override
  State<clockPage> createState() => _clockPageState();
}



class _clockPageState extends State<clockPage> {
  @override
  Widget build(BuildContext context) {
    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        dateTime=DateTime.now();
        switch(dateTime.weekday)
            {
          case 1:day='Monday';break;
          case 2:day='Tuesday';break;
          case 3:day='Wednesday';break;
          case 4:day='Thursday';break;
          case 5:day='Friday';break;
          case 6:day='Saturday';break;
          case 7:day='Sunday';break;
        }
        switch(dateTime.month)
        {
          case 1:month='Jan';break;
          case 2:month='Feb';break;
          case 3:month='Mar';break;
          case 4:month='Apr';break;
          case 5:month='May';break;
          case 6:month='June';break;
          case 7:month='July';break;
          case 8:month='Aug';break;
          case 9:month='Sep';break;
          case 10:month='Oct';break;
          case 11:month='Nov';break;
          case 12:month='Dec';break;
        }
      });
    });
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.black,
      //   title: Center(child: Text('ClockApp',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),)),
      // ),
      body: Column(
        children: [
          Container(
            height: 860,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.grey,
              image: DecorationImage(
                fit: BoxFit.cover,
                 image: AssetImage('assets/imgs/clock1.jpg'),
              ),
            ),
            child: Column(
              children: [
                RichText(text: TextSpan(children: [
                  TextSpan(text: '\n\n\n${dateTime.hour%12}:${dateTime.minute}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40,color: Colors.white)),
                  TextSpan(text: '${(dateTime.hour>12)?' am\n':' pm\n'}',style: TextStyle(fontSize: 15)),
                  TextSpan( text:'$day, $month ${dateTime.day}',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white)),
                ])),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
DateTime dateTime=DateTime.now();
String day='';
String month='';
