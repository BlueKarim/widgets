import 'package:flutter/material.dart';

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

  @override
  void initState(){
    text = 'initState: Hello World';
    super.initState();
  }
  void btnTapped(){
    setState(() {
      text = 'setState: Tapped me!';
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