import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
 Random random = Random();
 int x = 5 ;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: Center(child: Text('Lottery App')),
          backgroundColor: Colors.blue
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
           Center(child: Text('Lottery Wining Number is 4')),
          SizedBox(height: 20,),
          Container(
            // height: 250, correct
            height: x==4 ? 600 : 250,
              width: 300,
              decoration: BoxDecoration(
                color: x==4 ? Colors.teal : Colors.blue.withOpacity(.3),
                borderRadius: BorderRadius.circular(10)
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: x== 4 ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.done, color: Colors.green, size: 35,),
                    SizedBox(height: 8),
                    Text('Congrats You Have won the lotte, \nYour Number is  $x', textAlign: TextAlign.center,)
                  ],
                )  :
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.error, color: Colors.red, size: 35,),
                    SizedBox(height: 8),
                    Text('Better Luck Next Time is $x \ntry again', textAlign: TextAlign.center,)
                  ],
                ),
              ),
          ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            x = random.nextInt(6);
            print(x);
            setState(() {

            });
          },
          child: Icon(Icons.refresh),
        ),
      ),
    );
  }
}
