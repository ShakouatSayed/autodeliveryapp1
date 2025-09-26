import 'package:flutter/material.dart';

class RideItemCard extends StatelessWidget{
  final String imagePath;
  final String name;
  final bool switchValue;
  final ValueChanged<bool> onChanged;

  const RideItemCard({super.key, required this.imagePath, required this.name, required this.switchValue, required this.onChanged});

  @override
  Widget build(BuildContext context){
    return Container(
      margin: EdgeInsets.symmetric(vertical: 6),
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              // Image
               SizedBox(
                   height: 40,
                   width: 40,
                   child: Image.asset(imagePath, fit: BoxFit.cover)),
              SizedBox(width: 12),

              // Name
              Text(name, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
            ],
          ),

          // Switch
          Switch(value: switchValue, activeColor: Colors.green, onChanged: onChanged),
        ],
      ),
    );
  }
}