import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_application_1/controllers/square_controller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final SquareController squareController = Get.put(SquareController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Square Manager'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Color and Direction Modifier', 
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  squareController.rotateSquareClockwise();
                },
                child: const Icon(Icons.rotate_right),
              ),
              const SizedBox(height: 20),
              GetBuilder<SquareController>(
                builder: (_) => Transform.rotate(
                  angle: squareController.rotationAngle,
                  child: Container(
                    width: 100,
                    height: 100,
                    color: squareController.squareColor, // Changed color to dynamic color
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      squareController.changeSquareColor(Colors.yellow);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.yellow,
                    ),
                    child: const Text('Yellow'),
                  ),
                  const SizedBox(width: 20),
                  ElevatedButton(
                    onPressed: () {
                      squareController.changeSquareColor(Colors.blue);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                    ),
                    child: const Text('Blue'),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  squareController.rotateSquareCounterclockwise();
                },
                child: const Icon(Icons.rotate_left),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
