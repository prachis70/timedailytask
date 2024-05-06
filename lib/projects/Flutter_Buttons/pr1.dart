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
          backgroundColor: Colors.pink.shade50,
          appBar: AppBar(
            backgroundColor: Colors.green,
            title: Center(child: Text('⌚.Timer.⌚',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),)),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
             Container(
               height: 300,
               width: 410,
               decoration: BoxDecoration(
                 border: Border.all(color:Colors.black),
                 color: CupertinoColors.opaqueSeparator,
                 borderRadius: BorderRadius.circular(15),
               ),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                 children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FloatingActionButton(onPressed: () {

                    },
                    child: Icon(Icons.add),),
                    FloatingActionButton(onPressed: () {

                    },
                      child: Icon(Icons.remove),),
                    FloatingActionButton(onPressed: () {

                    },
                      child: Icon(Icons.accessibility),),
                    FloatingActionButton(onPressed: () {

                    },
                      child: Icon(Icons.access_time_filled),)
                  ],
                ),
                   Column(
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     children: [
                       ElevatedButton(onPressed: ()
                       {

                       }, child: const Row(
                         children: [
                           Text('Add'),
                         ],
                       )),
                       ElevatedButton(onPressed: (){

                       }, child: const Row(
                         children: [
                           Text('remove'),
                         ],
                       )),
                       ElevatedButton(onPressed: (){

                       }, child:const  Row(
                         children: [
                           Text('accessibility')
                         ],
                       )
                       ),
                       ElevatedButton(onPressed: (){

                       }, child:const  Row(
                         children: [
                           Text('access_time_filled')
                         ],
                       )
                       ),
                     ],
                   ),
                   Column(
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     children: [
                      ElevatedButton(onPressed: (){

                      }, child: const Row(
                        children: [
                          Icon(Icons.add),
                          Text('Add')
                        ],
                      )),
                       ElevatedButton(onPressed: (){

                       }, child: const Row(
                         children: [
                           Icon(Icons.remove),
                           Text('remove'),
                         ],
                       )),
                       ElevatedButton(onPressed: (){

                       }, child: const Row(
                         children: [
                           Icon(Icons.accessibility),
                           Text('accessibility'),
                         ],
                       )),
                       ElevatedButton(onPressed: (){
                       }, child: const Row(
                         children: [
                           Icon(Icons.access_time_filled),
                           Text('time'),
                         ],
                       )),
                     ],
                   )
                 ],
               ),
             ),
              Container(
                height: 300,
                width: 410,
                decoration: BoxDecoration(
                  border: Border.all(color:Colors.black),
                  color: CupertinoColors.opaqueSeparator,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        // FloatingActionButton(onPressed:(){
                        //   Icon(Icons.account_balance)
                        //
                        // })
                        FilledButton(onPressed: (){
                          Icon(Icons.account_balance);
                        }, child: Text('balance')),
                        FilledButton(onPressed: (){
                          Icon(Icons.account_balance);
                        }, child: Text('balance')),
                        FilledButton(onPressed: (){
                          Icon(Icons.account_balance);
                        }, child: Icon(Icons.account_balance_rounded),),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        OutlinedButton(onPressed: (){},child: Row(
                          children: [
                            Icon(Icons.account_balance),Text('account'),
                          ],
                        ),),
                        OutlinedButton(onPressed: (){},
                          child:Icon(Icons.account_balance_rounded),),
                      ],
                    ),
                  ],
                ),
                ),
            ],
          ),
        ),
    );
  }
}
