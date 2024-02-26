import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        
        appBar: AppBar(
          leading: const Icon(Icons.account_circle_rounded),
          backgroundColor: Colors.blueAccent,
          title: const Text('Marino'),
          elevation: 15,
          shadowColor: Colors.blueGrey,
        ),
        body: Center(
          /*child: Container(
            //margin: const EdgeInsets.all(10.0),
            //padding: const EdgeInsets.symmetric(vertical:80),
            //padding: const EdgeInsets.symmetric(horizontal:10),
            //padding: const EdgeInsets.only(top:10),
      
            //margin: const EdgeInsets.all(10.0),
            color: Color.fromARGB(255, 4, 140, 161),
            width: 100,
            height: 48.0,
            alignment: Alignment.center,
            child: const Text('container'),
          ),*/
          child: Row(
            children: [
              Container(width: 90, height: 90, color: Colors.red,),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Container(
                  color: Colors.green,
                  width: 100,
                  height: 100,
                ),
                ),
                Container(width: 90, height: 90, color: Colors.red)                
            ],
            /*
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(color: Colors.yellow, width: 50, height: 100),
              Container(color: Colors.blue, width: 50, height: 100),
              Container(color: Colors.red, width: 50, height: 100),
            ],*/
          ),
        ),
      ),
    );
  }
}