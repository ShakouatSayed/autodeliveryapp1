import 'dart:async';
import 'package:flutter/material.dart';

import '../onboardingScreen/OnboardingScreen.dart' show OnboardingScreen;

class SplashScreen extends StatefulWidget{
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState(){
    super.initState();

    Timer(Duration(seconds: 3), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder : (context) => OnboardingScreen()) );
    });
  }

  @override
  Widget build (BuildContext context){
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF2196f3), Color(0xFF4CAF50)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Logo Box
            // Container(
            //     height: screenWidth * 0.3,
            //     width: screenWidth * 0.3,
            //     decoration: BoxDecoration(
            //       borderRadius: BorderRadius.circular(30),
            //       boxShadow: [
            //         BoxShadow(
            //           color: Colors.white,
            //           blurRadius: 10,
            //           offset: Offset(0, 5),
            //         ),
            //       ],
            //     ),
            //     child: Icon(Icons.hourglass_top, color: Colors.blue)
            // ),
            Center(
              child: Image.asset(
                "assets/img.png",
                fit: BoxFit.fill,
               // color: Colors.blue,
              ),
            ),
            SizedBox(height: screenHeight * 0.03),

            //Title
            Text(
              "All your delivery Food",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.white70,
                fontWeight: FontWeight.w700
              ),
            ),
            SizedBox(height: 2),

            //Subtitle
            Text(
              "in one apps",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.white70,
                fontWeight: FontWeight.w700
              ),
            ),
          ],
        ),
      ),
    );
  }
}