import 'package:flutter/material.dart';
import 'package:timedailytask/projects/Timer_App/Analog_clock.dart';
import 'package:timedailytask/projects/Timer_App/Analog_clock.dart';
import 'package:timedailytask/projects/Timer_App/Digital_clock.dart';
import 'package:timedailytask/projects/Flutter_Buttons/pr1.dart';
import 'package:timedailytask/projects/Timer_App/StrapWatch.dart';
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
         '/':(context) =>clockPage(),
         '/an':(context) => Analogclock(),
        '/st':(context) => strapPage(),


      },
    );
  }
}
