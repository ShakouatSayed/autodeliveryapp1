import 'package:autodeliveryapp1/utils/Constants.dart';
import 'package:flutter/material.dart';

class PopUp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Align(
          alignment: Alignment.center,
          child: Container(
            height: 250,
            width: 250,
            //alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            padding: EdgeInsets.all(12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(alignment: Alignment.topLeft,child: Text("Daily limit reached", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700, fontSize: 18))),
                SizedBox(height: 10),
                Text("Please upgrade to continue accepting order", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500, fontSize: 16)),
                SizedBox(height: 10),
                SizedBox(height: 50,width: 150, child: ElevatedButton(onPressed: (){
                  Navigator.pop(context);
                }, style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12),

                  ),
                  backgroundColor: Colors.blue,
                ), child: Text("Ok", style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w700)))),
              ],
            ),
          ),
        ),
      ),
    );
  }
}