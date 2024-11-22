import 'package:flutter/material.dart';
import 'home_screen.dart';

class InitialScreen extends StatefulWidget {
  @override
  _InitialScreenState createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100], // Adjust color to match SVG background color
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              fixedSize: Size(500,500),
              textStyle: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
        ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomeScreen()),
            );
          },
          child: Text('Report'),
        ),
      ),
    );
  }
}