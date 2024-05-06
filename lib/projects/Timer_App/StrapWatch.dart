import 'dart:async';
import 'package:flutter/material.dart';
class strapPage extends StatefulWidget {
  const strapPage({super.key});

  @override
  State<strapPage> createState() => _strapPageState();
}

class _strapPageState extends State<strapPage> {
  @override
  Widget build(BuildContext context) {
    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        dateTime=DateTime.now();
        (dateTime.hour>11)?time='pm':time='am';
        switch(dateTime.weekday)
        {
          case 1:day="monday";break;
          case 2:day='tuesday';break;
          case 3:day='wednesday';break;
          case 4:day='thursday';break;
          case 5:day='friday';break;
          case 6:day='saturday';break;
          case 7:day='sunday'; break;
        }
        switch(dateTime.month)
        {
          case 1:month='january';
          case 2:month='february';
          case 3:month='march';
          case 4:month='april';
          case 5:month='may';
          case 6:month='june';
          case 7:month='july';
          case 8:month='august';
          case 9:month='september';
          case 10:month='october';
          case 11:month='november';
          case 12:month='december';
        }
      });
    });
    return Scaffold(
        body:Column(
          children: [
            Container(
              height: 760,
              width: 500,
              decoration: const BoxDecoration(
                  color: Colors.black,
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                          'assets/images/sky2.jpeg'
                      )
                  )
              ),
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20,left: 20),
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(


                      ),
                      child: GestureDetector(onTap:() {
                        Navigator.of(context).pop();
                      },child: Icon(Icons.arrow_back_ios,color: Colors.white,)),
                    ),
                  ),
                  Center(
                    child: SizedBox(
                      width: 217,
                      height: 217,

                      child: CircularProgressIndicator(
                        color:Colors.white,
                        strokeWidth: 6,
                        value: dateTime.second/60,
                      ),
                    ),

                  ),
                  Center(
                    child: SizedBox(
                      height: 207,
                      width: 207,
                      child: CircularProgressIndicator(
                        strokeWidth: 5,
                        value: dateTime.minute/60,
                        color: Colors.pink,
                      ),
                    ),
                  ),
                  Center(
                    child: SizedBox(
                      height: 195,
                      width: 195,
                      child: CircularProgressIndicator(
                        strokeWidth: 7,
                        value:((dateTime.hour%12)+dateTime.minute/60)/12,
                        color:Colors.black,
                      ),
                    ),
                  ),
                  Center(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom:100),
                        child: Text('${day}',style: TextStyle(
                            fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white
                        ),
                        ),
                      )),
                  Center(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 50,right: 60, top: 2),
                        child: Text('${month}',style:const TextStyle(
                            fontSize: 16,color:Colors.white
                        ),),
                      )
                  ),

                  Center(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 50,left: 30,top: 2),
                        child: Text('${dateTime.day},${dateTime.year}',
                          style:const TextStyle(
                              fontSize: 16,color: Colors.white
                          ),),
                      )
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 132,top: 28),

                      child: Row(
                        children: [

                          Text('${dateTime.hour%12}:${dateTime.minute}',style: TextStyle( fontSize: 45,color: Colors.white
                          ),)
                        ],
                      ),
                    ),
                  ),
                  Center(
                    child:
                    Padding(
                      padding: const EdgeInsets.only(left: 138,top: 100),
                      child: Row(
                        children: [
                          Text('${time}',style: TextStyle(
                              fontSize: 26,color: Colors.white
                          ),
                          )
                        ],),
                    ),
                  ),
                  Center(
                    child:
                    Padding(
                      padding: const EdgeInsets.only(left: 185,top: 100),
                      child: Row(
                        children: [
                          Text('${dateTime.second}',style: TextStyle(
                              fontSize: 26,color: Colors.white
                          ),
                          ),
                        ],
                      ),
                    ),
                  )



                ],),


            )
          ],
        )


    );
  }
}

DateTime dateTime=DateTime.now();
String day="";
String month="";
String time="";