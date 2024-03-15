import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.deepPurple,
        ),
        scaffoldBackgroundColor: Colors.white,
      ),
      home: MyColor(),
    );
  }
}

class MyColor extends StatefulWidget {
  const MyColor({Key? key}) : super(key: key);

  @override
  State<MyColor> createState() => _MyColorState();
}

class _MyColorState extends State<MyColor> {
  late Color _currentColor;
  late Color _originalColor;
  late String _selectedColorTitle;

  @override
  void initState() {
    super.initState();
    _currentColor = Colors.deepPurple;
    _originalColor = Colors.deepPurple;
    _selectedColorTitle = 'Colors'; // Initially set title to 'Colors'
  }

  void _restartApp() {
    setState(() {
      _currentColor = _originalColor;
      _selectedColorTitle = 'Colors'; // Reset title to 'Colors'
      _updateSystemColors(_currentColor);
    });
  }

  void _changeColor(Color color, String title) {
    setState(() {
      _currentColor = color;
      _selectedColorTitle = title; // Update the selected color title
      _updateSystemColors(_currentColor);
    });
  }

  void _updateSystemColors(Color color) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        systemNavigationBarColor: color,
        systemNavigationBarIconBrightness: Brightness.light,
        statusBarColor: color,
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.light,
      ),
    );
  }

  Widget _buildColorButton(Color color, String title) {
    Color buttonColor = Colors.white;
    if (_currentColor == color) {
      buttonColor = color;
    }

    return SizedBox(
      width: 200,
      height: 50,
      child: ElevatedButton(
        onPressed: () => _changeColor(color, title),
        style: ElevatedButton.styleFrom(
          backgroundColor: buttonColor,
        ),
        child: Text(
          title,
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _selectedColorTitle,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        centerTitle: true,
        backgroundColor: _currentColor,
        actions: [
          IconButton(
            icon: const Icon(Icons.restart_alt),
            onPressed: _restartApp,
          ),
        ],
      ),
      backgroundColor: _currentColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildColorButton(Colors.red, "Red"),
            const SizedBox(height: 16),
            _buildColorButton(Colors.yellow, "Yellow"),
            const SizedBox(height: 16),
            _buildColorButton(Colors.blue, "Blue"),
          ],
        ),
      ),
    );
  }
}

