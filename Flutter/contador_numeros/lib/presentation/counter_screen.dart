import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget{

  const CounterScreen({super.key});
@override
State<CounterScreen> createState() => _CounterScreenState();

}
class _CounterScreenState extends State<CounterScreen>{
int clickCounter=0;
@override 
Widget build(BuildContext context){
  return Scaffold(appBar: AppBar (title: const Text('Counter Screen')),
  body:  Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('$clickCounter', style: TextStyle(fontSize:169,fontWeight: FontWeight.w100)),
        Text('Click${clickCounter==1 ? '':'s'}')
      ],
    ),
  ),
  floatingActionButton: Column( mainAxisAlignment: MainAxisAlignment.end, children: [
 FloatingActionButton(
    onPressed: (){
      setState(() {
        ++clickCounter;
      });
    },
    child: const Icon(Icons.plus_one),
    ),

   FloatingActionButton(
    onPressed: (){
      setState(() {
        --clickCounter;
      });
    },
    child: const Icon(Icons.exposure_minus_1),
    ),

    
  ],)
  );

  
}
}