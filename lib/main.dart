import 'package:flutter/material.dart';
import 'package:timedailytask/projects/Timer_App.dart';
import 'package:timedailytask/projects/pr1.dart';
void main()
{
  runApp(Timerpro());
}
class Timerpro extends StatelessWidget {
  const Timerpro({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        //'/':(context)=>TimerButton(),
        '/':(context) => clockPage(),

      },
    );
  }
}
