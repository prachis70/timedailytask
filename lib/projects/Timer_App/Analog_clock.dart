
import 'dart:async';
import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Analogclock extends StatefulWidget {
  const Analogclock({super.key});

  @override
  State<Analogclock> createState() => _AnalogclockState();
}

class _AnalogclockState extends State<Analogclock> {
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
      backgroundColor: Colors.black,
      body: Column(
    children: [
    Container(
    height:850,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.grey,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/imgs/pic2.avif'),
        ),
      ),
      child: Column(
        children: [
          RichText(text: TextSpan(children:[
            TextSpan(text: '\n\n\n${dateTime.hour%12}:${dateTime.minute}:${dateTime.second}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40,color: Colors.white)),
            TextSpan(text: '${(dateTime.hour>12)?' pm\n':' am\n'}',style: TextStyle(fontSize: 15)),
            TextSpan( text:'$day, $month ${dateTime.day}',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white)),
          ])
          ),
          SizedBox( height: 30,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all( color: Colors.white),
              ),
                child:Center(
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      ...List.generate(60, (index) => Transform.rotate(
                        angle: ((index+1)*6*pi)/180,
                        child: ((index+1)%5==0)
                            ?
                        const VerticalDivider(
                          thickness: 3,
                          color:Colors.blue,
                          indent: 0,
                          endIndent: 180,
                        )
                            :
                        const VerticalDivider(
                          thickness: 3,
                          color: Colors.white,
                          indent: 0,
                          endIndent: 185,
                        ),
                      )),
                      Transform.rotate(angle:  ( dateTime.second*6*pi/180),
                        child: VerticalDivider(
                          color: Colors.white,
                          endIndent: 85,
                          indent: 30,
                          thickness: 2,
                        ),
                      ),
                      Transform.rotate(angle:  ( dateTime.minute*6*pi/180),
                        child: VerticalDivider(
                          color: Colors.pink.shade300,
                          endIndent: 85,
                          indent: 40,
                          thickness: 3,
                        ),
                      ),
                      Transform.rotate(angle:
                      ( ((dateTime.hour+(dateTime.minute/60))*30*pi)/180),
                        child: VerticalDivider(
                          color: Colors.teal,
                          endIndent: 85,
                          indent: 60,
                          thickness: 4,
                        ),
                      ),
                      Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ],
                  ),
                )
            ),
          ),
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
