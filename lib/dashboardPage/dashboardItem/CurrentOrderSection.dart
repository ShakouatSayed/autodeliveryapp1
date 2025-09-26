import 'package:autodeliveryapp1/utils/Constants.dart';
import 'package:flutter/material.dart';

class CurrentOrderSection extends StatelessWidget {
  const CurrentOrderSection({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // header
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Current Order",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Icon(Icons.local_shipping, size: 25, color: Colors.grey),
            ],
          ),
          SizedBox(height: 15),
          Divider(thickness: 3, color: Colors.grey[200],),
          // order details
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                backgroundColor: Color(0xFFDFFFD8),
                child: Icon(Icons.diamond, color: Colors.green),
              ),
              //SizedBox(width: 8),
              Text(
                "#5R9G87R",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
              //SizedBox(width: 5),
              Icon(Icons.circle, size: 8, color: Colors.grey),
              //SizedBox(width: 5),
              //Spacer(),
              Text("14 May 2025", style: TextStyle(color: Colors.grey)),
              Icon(Icons.more_vert, size: 15, color: Colors.grey),
            ],
          ),

          // Route
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            //mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: 55),
              Column(
                children: [
                  SizedBox(height: 5),
                  Icon(Icons.circle, size: 10),
                  Container(height: 63, width: 1, color: Colors.grey),
                  Icon(Icons.circle, size: 10),
                ],
              ),
              SizedBox(width: 10),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("From", style: TextStyle(color: Colors.grey)),
                  Text(
                    "Gulshan 1",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 12),
                  Text("To", style: TextStyle(color: Colors.grey)),
                  Text(
                    "Banani 11",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ],
          ),


          Container(
            padding: EdgeInsets.symmetric(vertical: 6, horizontal: 56),
            child: Wrap(
              spacing: 10,
              children: [
                Chip(
                  label: Text("Eta 12m"),
                  backgroundColor: Colors.blue.shade50,
                ),
                Chip(label: Text("2.8 Km"), backgroundColor: Colors.blue.shade50),
              ],
            ),
          ),
          Divider(thickness: 3, color: Colors.grey[200]),
        ],
      ),
    );
  }
}
