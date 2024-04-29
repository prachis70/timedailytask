import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TimerButton extends StatefulWidget {
  const TimerButton({super.key});

  @override
  State<TimerButton> createState() => _TimerButtonState();
}

class _TimerButtonState extends State<TimerButton> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
        appBar: AppBar(
          backgroundColor: CupertinoColors.black,
          title: Center(
            child: Text('TimerButton',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.cyan),
            ),
          ),
        ),
          body: Center(
            child: Container(
              padding: EdgeInsets.all(50),
              height: 300,
              width: 500,
              color: Colors.blueGrey,
            child:  Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed:() {
                        },
                        child:Icon(Icons.add,shadows: [Shadow(blurRadius: 4),
                        ]
                        ),
                      ),
                      ElevatedButton(
                        onPressed:() {
                        },
                        child:Icon(Icons.menu,),
                      ),
                      ElevatedButton(
                        onPressed:() {
                        },
                        child:Icon(Icons.access_time_filled,shadows: [BoxShadow(blurRadius: 4,spreadRadius: 6,color: CupertinoColors.black)],),
                      ),
                    ],
                  ),
                ],
              ),
            )
      ),
    ),
    );
  }
}
