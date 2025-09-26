import 'package:flutter/material.dart';

import '../../utils/Constants.dart';

class HeaderSection extends StatefulWidget {
  const HeaderSection({super.key});
  @override
  State<HeaderSection> createState() => _HeaderSectionState();
}

class _HeaderSectionState extends State<HeaderSection> {
  bool autoAssign = true;
  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: appBarColor,
      child: Padding(
        padding: EdgeInsets.fromLTRB(16, 20, 16, 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30),
            // Top bar with logo and bell
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset("assets/img.png", fit: BoxFit.cover),
                Stack(
                  children: [
                    Icon(
                      Icons.notifications_none,
                      color: Colors.white,
                      size: 25,
                    ),
                    Positioned(
                      right: -2,
                      top: 1,
                      left: 5,
                      child:Container(
                        padding: EdgeInsets.all(1),
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          shape: BoxShape.circle,
                        ),
                        child: Text(
                          "12",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 8,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),

            // Greeting + Online
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Hi, Mithun",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    "Online",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),

            Text(
              "Start your journey with smarter order handling-Accept orders instantly.",
              style: TextStyle(color: Colors.white, fontSize: 14),
            ),
            SizedBox(height: 20),

            // Auto-Assign Card
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Auto-Assign",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 4),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "5/5 Free Today ",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 10,
                            ),
                          ),
                          SizedBox(width: 5),
                          Icon(Icons.circle, color: Colors.grey, size: 5),
                          SizedBox(width: 5),
                          Text(
                            "Unlimited: OFF",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Switch(
                    value: autoAssign,
                    activeColor: Colors.green,
                    onChanged: (v) => setState(() => autoAssign = v),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
