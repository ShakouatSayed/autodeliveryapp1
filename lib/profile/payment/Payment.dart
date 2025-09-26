import 'package:autodeliveryapp1/profile/conformation/Conformation.dart';
import 'package:autodeliveryapp1/utils/Constants.dart';
import 'package:autodeliveryapp1/utils/CustomAppBar.dart';
import 'package:flutter/material.dart';

class Payment extends StatefulWidget{
  const Payment({super.key});
  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment>{
  int selectedPlane = 0;
  String ? selectedPaymentMethod;

  final nameController  = TextEditingController();
  final phoneController = TextEditingController();

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: CustomAppBar(name: "Payment", onChanged: (){
        Navigator.pop(context);
      }),
      body: SafeArea(child: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // Plane Selection
            Padding(
              padding: EdgeInsets.all(16),
              child: Row(
                children: [
                  Expanded(child: GestureDetector(
                    onTap: () => setState(() => selectedPlane = 0),
                    child: Container(
                      //height: selectedPlane == 1 ? 150 : 100,
                      //width: selectedPlane == 1 ? 150 : 100,
                      padding: EdgeInsets.symmetric(vertical: 16),
                      decoration: BoxDecoration(
                        color: selectedPlane == 0 ? Colors.white : Color(0xFFE5E9F0),
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: selectedPlane == 0 ? Colors.blue : Colors.transparent),
                      ),
                        child: Row(
                          //mainAxisAlignment: MainAxisAlignment.start,
                          //crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 5),
                            Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children:[
                                  Text("TK.", style: TextStyle(color: Colors.blue, fontSize: 16, fontWeight: FontWeight.bold)),
                                ]
                            ),
                            SizedBox(width: 8),
                            Column(
                              children: [
                                SizedBox(height: 5),
                                Container(
                                  height: 30,
                                    width: 30,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(3), color: lightGrey),
                                    child: Text("99",style: TextStyle(color: Colors.blue, fontSize: 18, fontWeight: FontWeight.bold))),
                                SizedBox(height: 2),
                                Text("Buy +5",style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w700)),
                              ],
                            ),
                          ],
                        ),
                      // Column(
                      //   children: [
                      //     Text("TK.", style: TextStyle(color: Colors.blue, fontSize: 16, fontWeight: FontWeight.bold)),
                      //     SizedBox(height: 4),
                      //     Text("99",style: TextStyle(color: Colors.blue, fontSize: 18, fontWeight: FontWeight.bold)),
                      //     SizedBox(height: 4),
                      //     Text("Buy +5",style: TextStyle(color: Colors.blue)),
                      //   ],
                      // ),
                    ),
                  )),
                  SizedBox(width: 1),
              
                  Expanded(child: GestureDetector(
                    onTap: () => setState(() => selectedPlane = 1),
                    child: Container(
                      padding: EdgeInsets.all(16),
                      //height: selectedPlane == 1 ? 150 : 100,
                      //width: selectedPlane == 1 ? 150 : 100,
                      decoration: BoxDecoration(
                        color: selectedPlane == 1 ? Colors.white : Color(0xFFE5E9F0),
                        border: Border.all(color: selectedPlane == 1 ? Colors.blue : Colors.transparent),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        //mainAxisAlignment: MainAxisAlignment.start,
                        //crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:[
                                Text("TK.", style: TextStyle(color: lightGrey, fontSize: 16, fontWeight: FontWeight.bold)),
                              ]
                          ),
                          SizedBox(width: 5),
                          Column(
                            children: [
                              Text("799/mo",style: TextStyle(color: lightGrey, fontSize: 18, fontWeight: FontWeight.bold)),
                              SizedBox(height: 5),
                              Text("Unlimited",style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w700)),
                            ],
                          ),
                        ],
                      ),

                      // Column(
                      //   children: [
                      //     Text("TK.", style: TextStyle(color: Colors.grey, fontSize: 16, fontWeight: FontWeight.bold)),
                      //     SizedBox(height: 4),
                      //     Text("799/mo",style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 18)),
                      //     SizedBox(height: 4),
                      //     Text("Unlimited", style: TextStyle(color: Colors.grey)),
                      //   ],
                      // ),
                    ),
                  ))
                ],
              ),
            ),
            SizedBox(height: 10),

            // Personal Information
            Text("Personal Information", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            SizedBox(height: 12),
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                hintText: "Your Name",
                suffixText: "*",
                suffixStyle: TextStyle(color: Colors.red),
                border: OutlineInputBorder( borderRadius: BorderRadius.circular(10)),
                contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: phoneController,
              decoration: InputDecoration(
                hintText: "Your Phone Number",
                suffixStyle: TextStyle(color: Colors.red),
                suffixText: "*",
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              ),
            ),
            SizedBox(height: 10),

            // Payment Method
            Text("Payment Methode", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            SizedBox(height: 10),
            GridView.count(
              crossAxisCount: 3,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: [
                _buildPaymentOption("bKash", "assets/paymentImage/bkash.png"),
                _buildPaymentOption("Nagad", "assets/paymentImage/nagad.png"),
                _buildPaymentOption("Rocket", "assets/paymentImage/rocket.png"),
                _buildPaymentOption("Upay", "assets/paymentImage/upay.png"),
                _buildPaymentOption("VISA", "assets/paymentImage/visa.png"),
                _buildPaymentOption("Mastercard", "assets/paymentImage/mastercard.png"),
              ],
            ),
            SizedBox(height: 20),

            // Confirm Button
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=> Conformation()));
              }, style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              ), child: Text("Conformation", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
            )
          ],
        ),
      )),
    );
  }
  Widget _buildPaymentOption(String label, String imagePath){
    return GestureDetector(
      onTap: () => setState(() => selectedPaymentMethod == label),
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
                color: selectedPaymentMethod == label ? Colors.blue : Colors.grey.shade300,
                width: 2),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Radio<String>(
              value: label,
              groupValue: selectedPaymentMethod,
              onChanged: (value) => setState(() => selectedPaymentMethod = value),
              visualDensity: VisualDensity.compact,
            ),
            Expanded(child: Image.asset(imagePath)),
          ],
        ),
      ),
    );
  }
}