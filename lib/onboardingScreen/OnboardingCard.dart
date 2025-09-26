import 'package:flutter/material.dart';

class OnboardingCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subtitle;

  const OnboardingCard({
    super.key,
    required this.imagePath,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    final imageBoxSize = screenWidth * 0.7;
    final titleSize = screenWidth * 0.07;
    final subtitleSize = screenWidth * 0.038;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(height: 100),
        // Image Part
        SizedBox(
          height: screenHeight * 0.22,
          width: screenWidth * 0.6,
          child: Image.asset(imagePath, fit: BoxFit.contain),
        ),
        SizedBox(height: 20),

        // Title Part
        Text(title,textAlign: TextAlign.center, style: TextStyle(fontSize: titleSize, fontWeight: FontWeight.w700,color: Colors.black)),
        SizedBox(height: 20),

        // Subtitle Part
        Text(
          subtitle,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: subtitleSize, color: Colors.grey, height: 1.4),
        ),
      ],
    );
  }
}