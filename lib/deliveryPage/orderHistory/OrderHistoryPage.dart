import 'package:autodeliveryapp1/utils/Constants.dart';
import 'package:autodeliveryapp1/utils/CustomAppBar.dart';
import 'package:flutter/material.dart';

class OrderHistoryPage extends StatelessWidget{
  const OrderHistoryPage({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: CustomAppBar(name: "Order History", onChanged: (){
        Navigator.pop(context);
      },),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                Text(
                  "Delivery History",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,),
                ),
          
                SizedBox(height: 10),
                Divider(thickness: 1, color: Colors.green[100]),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // order details
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
          
                        SizedBox(
                            height: 40,
                            width: 40,
                            child: Image.asset("assets/rideImage/foodpanda.png", fit: BoxFit.cover)),
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
                      padding: EdgeInsets.symmetric(vertical: 2, horizontal: 56),
                      child: Row(
                        children: [
                          Text("Delivery Status: ",style: TextStyle(fontSize: 12, color: Colors.grey)),
                          SizedBox(width: 20),
                          Chip(label: Text("Delivered", style: TextStyle(color: Colors.green)), backgroundColor: Colors.green[50]),
                        ],
                      ),
                    ),
                  ],
                ),
                Divider(thickness: 3, color: Colors.grey[200]),
                SizedBox(height: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // order details
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
          
                        SizedBox(
                            height: 40,
                            width: 40,
                            child: Image.asset("assets/rideImage/phatao.png", fit: BoxFit.cover)),
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
                      padding: EdgeInsets.symmetric(vertical: 2, horizontal: 56),
                      child: Row(
                        children: [
                          Text("Delivery Status: ", style: TextStyle(fontSize: 12, color: Colors.grey)),
                          SizedBox(width: 20),
                          Chip(label: Text("Canceled", style: TextStyle(color: Colors.yellow)), backgroundColor: Colors.yellow[50]),
                        ],
                      ),
                    ),
                  ],
                ),
                Divider(thickness: 3, color: Colors.grey[200]),
          
                SizedBox(height: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // order details
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
          
                        SizedBox(
                            height: 40,
                            width: 40,
                            child: Image.asset("assets/rideImage/uber.png", fit: BoxFit.cover)),
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
                      padding: EdgeInsets.symmetric(vertical: 2, horizontal: 56),
                      child: Row(
                        children: [
                          Text("Delivery Status: ", style: TextStyle(fontSize: 12, color: Colors.grey)),
                          SizedBox(width: 20),
                          Chip(label: Text("Failed", style: TextStyle(color: Colors.red)), backgroundColor: Colors.red[50]),
                        ],
                      ),
                    ),
                  ],
                ),
                Divider(thickness: 3, color: Colors.grey[200]),
          
              ],
            ),
          ),
        ),
      ),
    );
  }
}