import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String text = '';
  int random1 = 0,random2 = 0;
  @override
  void initState(){
    text = 'Random Number!';
    super.initState();
  }
  void btnTapped(){
    setState(() {
      Random random = new Random();
      random1 = random.nextInt(6);
      random2 = random.nextInt(6);
      text = 'This is your Random Number :';
    });
  }
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello World App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello App'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(text),
              Text(random1.toString()+random2.toString()),
              ElevatedButton(
                onPressed: btnTapped, 
                child: Text('Tapped me!'))
            ],
          ),
        ),
      )
    );
  }
}