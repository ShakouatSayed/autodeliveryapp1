import 'package:autodeliveryapp1/profile/payment/Payment.dart';
import 'package:autodeliveryapp1/utils/Constants.dart';
import 'package:autodeliveryapp1/utils/CustomAppBar.dart';
import 'package:flutter/material.dart';

import '../../dashboardPage/HomePage.dart';

class Upgrade extends StatelessWidget{

  const Upgrade({super.key});

  @override
  Widget build(BuildContext context){

    return Scaffold(
      backgroundColor: backgroundColor,
      appBar:  CustomAppBar(name: "Upgrade", onChanged: (){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => HomePage()));
      }),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              // Daily limit reached
              Container(
                padding: EdgeInsets.all(16),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(16)
                ),
                child: Column(
                  //mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Daily limit reached", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                    SizedBox(height: 8),

                    Text("You\'ve used 5/5 auto-assigns today.", style: TextStyle(fontSize: 16, color: Colors.grey)),
                    SizedBox(height: 16),

                    // Rest time
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.yellow[50],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text("Resets at 12:00 AM", style: TextStyle(fontSize: 14, color: Colors.yellow)),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),

              // Buy button
              SizedBox(
                width: double.infinity,
                height: 40,
                child: ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_) => Payment()));
                },

                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    //padding: EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Text("Buy +5 for ৳99", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white)),
                ),
              ),
              SizedBox(height: 25),

              // Unlimited button
              SizedBox(
                width: double.infinity,
                height: 50,
                child: OutlinedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_) => Payment()));
                },
                  style: OutlinedButton.styleFrom(
                    //padding: EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    side: BorderSide(width: 2, color: Colors.green),
                  ),
                  child: Text("Go Unlimited ৳799/mo", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.green)),
                ),
              ),
              SizedBox(height: 8),

              // Best Commend
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Best value", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.grey)),
                  SizedBox(width: 8),
                  Icon(Icons.circle, size: 5, color: Colors.grey),
                  SizedBox(width: 8),
                  Text("Cancel Anytime", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16, color: Colors.grey)),
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}