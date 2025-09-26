import 'package:autodeliveryapp1/profile/upgrade/Upgrade.dart';
import 'package:flutter/material.dart';

import '../../utils/Constants.dart';
import '../rideItemCard/RideItemCard.dart';

class RideSection extends StatefulWidget{
  const RideSection({super.key});
  @override
  State<RideSection> createState() => _RideSectionState();
}

class _RideSectionState extends State<RideSection>{

  @override
  Widget build(BuildContext context){
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Get Ride",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,),
          ),
          SizedBox(height: 12),

          // All ride options
          ...List.generate(
              rideOptions.length, (index) => RideItemCard(
              imagePath: rideOptions[index]["imagePath"],
              name: rideOptions[index]["name"],
              switchValue: rideOptions[index]["switchVal"],
              onChanged: (val){
                setState(() => rideOptions[index]["switchVal"] = val);
              })
          ),
          SizedBox(height: 20),

          // Upgrade Card
          Container(
            //margin: EdgeInsets.symmetric(horizontal: 16),
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: appBarColor,
              borderRadius: BorderRadius.circular(14),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Only 99 Tk.",
                        //textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Upgrade To Enjoy Unlimited Rides",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_) => Upgrade()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                  ),
                  child: Text(
                    "Upgrade",
                    style: TextStyle(
                      //color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}