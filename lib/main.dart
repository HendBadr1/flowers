import 'package:flowers/featuers/splash/views/splash_screen.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(FlowersApp());
}
class FlowersApp extends StatelessWidget {
  const FlowersApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:  SplashScreen(),
    );
  }
}
