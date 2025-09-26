import 'package:autodeliveryapp1/dashboardPage/dashboardItem/CurrentOrderSection.dart';
import 'package:autodeliveryapp1/dashboardPage/dashboardItem/HeaderSection.dart';

import 'package:autodeliveryapp1/utils/Constants.dart';
import 'package:flutter/material.dart';

import 'dashboardItem/RideSection.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Top Blue Sec
      backgroundColor: backgroundColor,
      //backgroundColor: appBarColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderSection(),
            // Ride Section
            RideSection(),
        
            // Current Order
            CurrentOrderSection(),
          ],
        ),
      ),
    );
  }
}
