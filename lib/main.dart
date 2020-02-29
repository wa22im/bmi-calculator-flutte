import 'package:flutter/material.dart';
import './pages/input_page.dart';
void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
      
        primaryColor: Color(0xFF0A0412),
        scaffoldBackgroundColor: Color(0xFF0A0412),
        accentColor: Colors.purple,
        primaryColorBrightness: Brightness.light, 
      ),
      home: InputPage(),
    );
  }
}


