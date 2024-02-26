import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.favorite),
          backgroundColor: const Color.fromARGB(255, 227, 14, 124),
          title: const Text('Date Mate', style: styleTextAppBar),
          elevation: 15,
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // Profile Image
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[500],
                    border: Border.all(
                        width: 2, color: const Color.fromARGB(255, 0, 0, 0)),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  padding: const EdgeInsets.all(20),
                  alignment: Alignment.center,
                  child: ClipOval(
                    child: SizedBox(
                      width: 200,
                      height: 200,
                      child: Image(
                        image: AssetImage('assets/image.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20), // Adding spacing between widgets
                // Profile Name
                Container(
                  padding: const EdgeInsets.all(20),
                  color: Colors.blueGrey,
                  width: 250,
                  height: 100,
                  child: const Text(
                    'Camilo López',
                    style: styleTitle,
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 20), // Adding spacing between widgets
                // Profile Description
                Container(
                  padding: const EdgeInsets.all(20),
                  color: Colors.teal,
                  width: 250,
                  height: 150,
                  child: const Text(
                    'Looking for someone who loves adventure and trying new sports!',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(height: 20), // Adding spacing between widgets
                // Connect Button with Icon
                ElevatedButton.icon(
                  onPressed: () {
                    print('Connect Request Sent');
                  },
                  icon: const Icon(Icons.favorite),
                  label: const Text('Connect'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Text styles
const TextStyle styleTextAppBar =
    TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white);
const TextStyle styleTitle =
    TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white);
