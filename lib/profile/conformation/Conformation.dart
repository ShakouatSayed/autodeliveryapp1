import 'package:autodeliveryapp1/utils/Constants.dart';
import 'package:autodeliveryapp1/utils/CustomAppBar.dart';
import 'package:flutter/material.dart';

class Conformation extends StatelessWidget {
  const Conformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: CustomAppBar(name: "Conformation", onChanged: (){
        Navigator.pop(context);
      }),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Thank You!",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.blue,
                ),
              ),
              SizedBox(height: 20),

              Stack(
                children: [
                  Icon(Icons.circle_outlined, size: 200, color: Colors.green),
                  Positioned(
                    top: 2,
                    bottom: 10,
                    right: 6,
                    left: 5,
                    child: Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(5),
                      child: Icon(Icons.check, size: 100, color: Colors.green),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Text(
                "Congratulations !",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Colors.blue,
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.all(16),
                child: Text(
                  "You have successfully made your payment enjoy your ride",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
              ),

              SizedBox(height: 40),
              ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                backgroundColor: Colors.blue
              ), child: Text("Continue Ride", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white)))
            ],
          ),
        ),
      ),
    );
  }
}

