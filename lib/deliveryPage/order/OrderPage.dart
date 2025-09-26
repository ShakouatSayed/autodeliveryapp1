import 'package:autodeliveryapp1/dashboardPage/HomePage.dart';
import 'package:autodeliveryapp1/deliveryPage/orderHistory/OrderHistoryPage.dart';
import 'package:autodeliveryapp1/map/MapPage.dart';
import 'package:autodeliveryapp1/utils/Constants.dart';
import 'package:autodeliveryapp1/utils/CustomAppBar.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class OrderPage extends StatefulWidget{
  const OrderPage({super.key});
  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage>{
  static final CameraPosition _pGooglePlex = CameraPosition(
      target: LatLng(23.797911, 90.414391),
      zoom: 11.4746,
  );
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: CustomAppBar(name: "Order", onChanged: (){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => HomePage()));
      }),
      body: SafeArea(
        child: Padding(padding: EdgeInsets.all(16.0), child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [

            // Map Preview
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_) => MapPage()));
              },
              child: Container(
                padding: EdgeInsets.all(8),
                height: 160,
                decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(16)),
                //alignment: Alignment.center,
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 4),
                    Text("Map Preview", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500)),
                    SizedBox(height: 4),
                     Container(
                          padding: EdgeInsets.all(8),
                          height: 100,
                          decoration: BoxDecoration(color: Color(0xFFE9ECF3), borderRadius: BorderRadius.circular(16)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(16),
                            child: GoogleMap(
                              initialCameraPosition:_pGooglePlex,
                              zoomControlsEnabled: false,
                              scrollGesturesEnabled: false,
                              rotateGesturesEnabled: false,
                              tiltGesturesEnabled: false,
                              zoomGesturesEnabled: false,
                              myLocationEnabled: false,
                            ),
                          )
                        ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16),

            // Pickup / Drop info
            //Spacer(),
            Divider(thickness: 3, color: Colors.grey[200]),
            Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                          Text("Pickup", style: TextStyle(color: Colors.grey)),
                          Text(
                            "Cafe Orion, Gulshan 1",
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                          SizedBox(height: 12),
                          Text("Drop-off", style: TextStyle(color: Colors.grey)),
                          Text(
                            "H#11, Road 05, Banani",
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
                ],
              ),
            ),
            Divider(thickness: 3, color: Colors.grey[200]),
            SizedBox(height: 10),
            //Buttons
            SizedBox(
              height: 48,
              child: ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => OrderHistoryPage()));
              }, style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              ), child: Text("Start Delivery", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white))),
            ),
            SizedBox(height: 12),

            SizedBox(
              height: 48,
              child: OutlinedButton(onPressed: (){}, style: OutlinedButton.styleFrom(
                side: BorderSide(color: Colors.red, width: 2),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              ), child: Text("Decline", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.red))),
            )
          ],
        )),
      ),
    );
  }
}