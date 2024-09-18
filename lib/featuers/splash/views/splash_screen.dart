import 'package:flowers/core/utils/images.dart';
import 'package:flowers/featuers/on_board/views/on_board/on_board.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override

  void initState() {
    super.initState();
    Future.delayed(const Duration(
        seconds: 3
    ),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (C) {
        return OnBoardScreen();


      }

      ));
    }


    );
  }
  Widget build(BuildContext context) {
    return Scaffold(

      body: Image.asset(AppImages.splash,height: double.infinity,width: double.infinity,fit: BoxFit.cover,)


    );
  }
}
